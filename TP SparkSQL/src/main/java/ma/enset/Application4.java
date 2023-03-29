package ma.enset;

import org.apache.hadoop.fs.FilterFileSystem;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.api.java.function.FilterFunction;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Encoder;
import org.apache.spark.sql.Encoders;
import org.apache.spark.sql.SparkSession;

import java.util.HashMap;
import java.util.Map;

public class Application4 {
    public static void main(String[] args) {
        Logger.getLogger("org").setLevel(Level.OFF);
        SparkSession ss = SparkSession.builder().master("local[*]").appName("tp spark sql").getOrCreate();
        Encoder<Employe> employeEncoder= Encoders.bean(Employe.class);
        Dataset<Employe> dataset=ss.read().option("multiline",true).json("employes.json").as(employeEncoder);
        dataset.printSchema();
        dataset.show();
        //dataset.filter((FilterFunction<Employe>) employe->employe.getAge()>25).show();
        dataset.filter("age>25").show();
    }
}
