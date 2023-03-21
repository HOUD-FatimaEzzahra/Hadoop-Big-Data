package ma.enset;

import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.SparkConf;
import scala.Tuple2;

public class VentesParVille {
    public static void main(String[] args) {
        SparkConf conf = new SparkConf().setAppName("Total des ventes par ville").setMaster("local[*]");
        JavaSparkContext sc = new JavaSparkContext(conf);

        // Chargement du fichier texte
        JavaRDD<String> ventes = sc.textFile("Input/ventes.txt");

        // Transformation des lignes en tuples (ville, prix)
        JavaPairRDD<String, Double> ventesVille = ventes.mapToPair(l -> {
            String[] cols = l.split(" ");
            return new Tuple2<>(cols[1], Double.parseDouble(cols[3]));
        });

        // Calcul du total des ventes par ville
        JavaPairRDD<String, Double> totalVentes = ventesVille.reduceByKey((x, y) -> x + y);

        // Affichage des résultats
        totalVentes.foreach(t -> System.out.println(t._1 + ": " + t._2));

        sc.stop();
    }
}

