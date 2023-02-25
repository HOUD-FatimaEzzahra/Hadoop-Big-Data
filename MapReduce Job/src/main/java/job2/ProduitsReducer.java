package job2;

import java.io.IOException;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class ProduitsReducer extends Reducer<Text, LongWritable, Text, LongWritable> {
    private final LongWritable val = new LongWritable();
    @Override
    public void reduce(Text key, Iterable<LongWritable> values, Context context) throws IOException, InterruptedException {
        long somme = 0;
        for (LongWritable value : values) {
            somme += value.get();
        }
        val.set(somme);
        context.write(key, val);
    }
}
