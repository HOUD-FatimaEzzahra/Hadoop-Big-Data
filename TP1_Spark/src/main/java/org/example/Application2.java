package org.example;

import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;

import java.util.Arrays;

public class Application2 {
    public static void main(String[] args) {
        SparkConf sparkConf=new SparkConf();
        sparkConf.setAppName("TP Word Count").setMaster("locate[*]");
        JavaSparkContext sc=new JavaSparkContext(sparkConf);
        JavaRDD<String> lines=sc.textFile("names.txt");
        JavaRDD<String> words=lines.flatMap((line)-> Arrays.asList(line.split(" ")).iterator());
        words.collect();
    }

}
