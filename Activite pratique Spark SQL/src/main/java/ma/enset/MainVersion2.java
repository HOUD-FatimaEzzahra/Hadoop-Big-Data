package ma.enset;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.functions;

import java.util.HashMap;
import java.util.Map;

public class MainVersion2 {
    public static void main(String[] args) {

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


        // Question 1 : Afficher le nombre de consultations par jour
        System.out.println("le nombre de consultations par jour");
        Dataset<Row> nbConsultationsParJour = dfConsultation.groupBy("date_consultation")
                .agg(functions.count("*").alias("nb_consultations"));

        nbConsultationsParJour.show();

        // Question 2 : Afficher le nombre de consultation par medecin
        System.out.println("le nombre de consultation par medecin");
        Dataset<Row> nbConsultationsParMedecin = dfConsultation.join(dfMedecin,
                        dfConsultation.col("id_medecin").equalTo(dfMedecin.col("id")))
                .groupBy("nom", "prenom")
                .agg(functions.count("*").alias("nb_consultations"))
                .select("nom", "prenom", "nb_consultations")
                .orderBy(functions.desc("nb_consultations"));

        nbConsultationsParMedecin.show();

        // Question 3 : Afficher pour chaque medecin, le nombre de patients qu'il a assisté
        System.out.println("le nombre de patients que chaque medecin a assisté");
        Dataset<Row> nbPatientsParMedecin = dfConsultation.join(dfMedecin,
                        dfConsultation.col("id_medecin").equalTo(dfMedecin.col("id")))
                .join(dfPatient, dfConsultation.col("id_patient").equalTo(dfPatient.col("id")))
                .groupBy(dfMedecin.col("id"), dfMedecin.col("nom"), dfMedecin.col("prenom"))
                .agg(functions.countDistinct(dfPatient.col("id")).alias("nb_patients"))
                .select(dfMedecin.col("nom"), dfMedecin.col("prenom"), functions.col("nb_patients"))
                .orderBy(functions.desc("nb_patients"));
        nbPatientsParMedecin.show();
    }
}
