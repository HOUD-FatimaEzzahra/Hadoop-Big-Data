package ma.enset;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;

import java.util.HashMap;
import java.util.Map;

public class MainVersionSQL {
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

    }
}