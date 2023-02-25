package job2;

import java.io.IOException;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class ProduitsMapper extends Mapper<LongWritable, Text, Text, LongWritable> {
    private final Text outputKey = new Text();
    private final LongWritable val = new LongWritable();
    @Override
    public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
        String[] fields = value.toString().split("\\s+");
        String ville = fields[1];
        String produit = fields[2];
        long montant = Long.parseLong(fields[3]);
        outputKey.set(ville + "-" + produit);
        val.set(montant);
        context.write(outputKey, val);
    }
}
