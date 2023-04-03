package ma.enset.Partie1;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.functions;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeoutException;

import static org.apache.spark.sql.functions.col;

public class MainVersion1 {
    public static void main(String[] args) throws TimeoutException {
        Logger.getLogger("org").setLevel(Level.OFF);
        SparkSession ss = SparkSession.builder().master("local[*]").appName("Activité pratique Spark SQL").getOrCreate();
        Map<String, String> options = new HashMap<>();
        options.put("driver", "com.mysql.cj.jdbc.Driver");
        options.put("url", "jdbc:mysql://localhost:3306/DB_Hopital");
        options.put("user", "root");
        options.put("password", "fatiza");
        //Table patients
        Dataset<Row> dfPatient = ss.read().format("jdbc")
                .options(options)
                .option("dbtable","Patients")
                .load();
        System.out.println("Table Patient");
        //dfPatient.printSchema();
        dfPatient.show();

        //Table medecins
        Dataset<Row> dfMedecin = ss.read().format("jdbc")
                .options(options)
                .option("dbtable","Medecins")
                .load();
        System.out.println("Table Medecin");
        //dfMedecin.printSchema();
        dfMedecin.show();

        //Table consultations
        Dataset<Row> dfConsultation = ss.read().format("jdbc")
                .options(options)
                .option("dbtable","Consultations")
                .load();
        System.out.println("Table Consultation");
        //dfConsultation.printSchema();
        dfConsultation.show();



        //PARTIE I
        //1
        System.out.println("Nombre de consultations par date");
        Dataset<Row> consultationParJour = ss.read().format("jdbc")
                .options(options)
                .option("query","select date_consultation, count(date_consultation) as 'nombre de consultations' from Consultations group by date_consultation")
                .load();
        consultationParJour.show();

        //2
        System.out.println("Nombre de consultations par medecin");
        Dataset<Row> consultationParMedecin = ss.read().format("jdbc")
                .options(options)
                .option("query","select M.nom, M.prenom, count(C.id) as 'nombre de consultations' from Consultations C, Medecins M where C.id_medecin=M.id group by M.nom, M.prenom ")
                .load();
        consultationParMedecin.show();


        //2
        System.out.println("Nombre des patients assistés par un medecin");
        Dataset<Row> patientsParMedecin = ss.read().format("jdbc")
                .options(options)
                .option("query","select M.nom, M.prenom, count(distinct P.id) as 'nombre de patient assistés' from Patients P, Medecins M, Consultations C where C.id_medecin=M.id and C.id_patient=P.id group by M.nom, M.prenom ")
                .load();
        patientsParMedecin.show();



        //PARTIE II

        System.out.println("Table incendies");
        Dataset<Row> incidentsParService = ss.read().option("header",true).option("inferSchema",true).csv("/streaming/incidents.csv");
        incidentsParService.show();

        // Question 1 : Afficher d’une manière continue le nombre d’incidents par service.
        Dataset<Row> nbIncidentsByService = incidentsParService.groupBy("service")
                .agg(functions.count("*").alias("nb_incidents"));

        nbIncidentsByService.writeStream()
                .outputMode("complete")
                .format("console")
                .start();

        // Question 2 : Afficher d’une manière continue les deux année ou il a y avait plus d’incidents.
        Dataset<Row> incidentsByYear = incidentsParService.withColumn("year", functions.year(col("date")))
                .groupBy("year")
                .agg(functions.count("*").alias("nb_incidents"))
                .orderBy(functions.desc("nb_incidents"))
                .limit(2);

        incidentsByYear.writeStream()
                .outputMode("complete")
                .format("console")
                .start();







    }
}