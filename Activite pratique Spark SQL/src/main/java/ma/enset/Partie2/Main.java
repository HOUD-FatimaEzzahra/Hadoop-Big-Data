package ma.enset.Partie2;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.functions;
import static org.apache.spark.sql.functions.col;

public class Main {

    public static void main(String[] args) throws Exception {
        Logger.getLogger("org").setLevel(Level.OFF);
        // Configuration de Spark
        SparkSession ss = SparkSession.builder()
                .appName("Activite pratique spark sql")
                .master("local[*]")
                .getOrCreate();

        // Lecture des données en streaming
        Dataset<Row> dfIncident = ss.read()
                .option("header", true)
                .option("inferSchema", true)
                .csv("incidents.csv");
        dfIncident.show();

        // Question 1 : Afficher d’une manière continue le nombre d’incidents par service.
        System.out.println("le nombre d’incidents par service");
        Dataset<Row> nbIncidentsByService = dfIncident.groupBy("service")
                .agg(functions.count("*").alias("nombre d'incidents"));

        nbIncidentsByService.show();
// Question 2 : Afficher d’une manière continue les deux années où il y avait le plus d’incidents.
        System.out.println("les deux années où il y avait le plus d’incidents");
        Dataset<Row> incidentsByYear = dfIncident
                .withColumn("date", functions.year(col("date")))
                .groupBy("date")
                .agg(functions.count("*").alias("nombre d'incidents"))
                .orderBy(functions.desc("nombre d'incidents"))
                .limit(2);
        incidentsByYear.show();
    }
}
