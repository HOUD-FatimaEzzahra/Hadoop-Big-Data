package ma.enset;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;

import static org.apache.spark.sql.functions.col;

public class Application {
    public static void main(String[] args) {
        Logger.getLogger("org").setLevel(Level.OFF);
        SparkSession ss=SparkSession.builder().master("local[*]").appName("tp spark sql").getOrCreate();
        Dataset<Row> dfEmploy=ss.read().option("multiline",true).json("employes.json");
        //dfEmploy.printSchema();
        dfEmploy.show();
        //dfEmploy.select("nom","salaire").show
        //dfEmploy.select(col("nom"),col("salaire").plus(1500)).show();
        //dfEmploy.select(col("nom"),col("salaire").plus(1500).alias("salaire")).show();
        //dfEmploy.filter(col("salaire").gt(15000).and);
    }
}