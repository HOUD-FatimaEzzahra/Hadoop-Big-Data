package ma.enset;

import org.apache.spark.SparkConf;
import org.apache.spark.streaming.Duration;
import org.apache.spark.streaming.api.java.JavaDStream;
import org.apache.spark.streaming.api.java.JavaPairDStream;
import org.apache.spark.streaming.api.java.JavaReceiverInputDStream;
import org.apache.spark.streaming.api.java.JavaStreamingContext;
import scala.Tuple2;

import java.util.Arrays;

public class Application1 {
    public static void main(String[] args) throws InterruptedException {
        SparkConf sparkConf=new SparkConf().setAppName("TP 1 Spark Streaming").setMaster("local[*]");
        JavaStreamingContext javaStreamingContext=new JavaStreamingContext(sparkConf, new Duration(5000));
        JavaReceiverInputDStream<String> javaReceiverInputDStream=javaStreamingContext.socketTextStream("localhost",9090);
        JavaDStream<String> javaDStream=javaReceiverInputDStream.flatMap(s -> Arrays.asList(s.split(" ")).iterator());
        JavaPairDStream<String, Integer> javaPairDStream=javaDStream.mapToPair(s -> new Tuple2<>(s,1));
        JavaPairDStream<String,Integer> javaPairDStream1=javaPairDStream.reduceByKey((a,b) -> a+b);
        javaPairDStream1.print();
        javaStreamingContext.start();
        javaStreamingContext.awaitTermination();
    }
}