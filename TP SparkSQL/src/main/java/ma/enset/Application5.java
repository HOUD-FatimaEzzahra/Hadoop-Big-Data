package ma.enset;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.sql.*;

public class Application5 {
    public static void main(String[] args) {
        Logger.getLogger("org").setLevel(Level.OFF);
        SparkSession ss = SparkSession.builder().master("local[*]").appName("tp spark sql").getOrCreate();
        Encoder<Employe> employeEncoder= Encoders.bean(Employe.class);
        Dataset<Row> dataframeEmploye=ss.read().option("multiline",true).json("employes.json");
        //dataFrame to dataSet
        Dataset<Employe> datasetEmploye=dataframeEmploye.as(employeEncoder);
        //dataSet to RDD
        JavaRDD<Employe> employeJavaRDD1=datasetEmploye.javaRDD();
        //dataFrame to RDD
        JavaRDD<Employe> employeJavaRDD2=datasetEmploye.as(employeEncoder).javaRDD();
        //RDD to dataFrame
        Dataset<Row> dataframeEmploye2=ss.createDataFrame(employeJavaRDD1,Employe.class);
        dataframeEmploye2.show();
        //RDD to dataSet
        Dataset<Employe> ds= ss.createDataset(employeJavaRDD2.rdd(),employeEncoder);
        ds.show();
        
    }
}
