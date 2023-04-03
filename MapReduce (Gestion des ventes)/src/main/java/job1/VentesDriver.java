package job1;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class VentesDriver {
    public static void main(String[] args) throws Exception {
        /*if (args.length != 2) {
            System.err.println("Usage: SalesJob <input path> <output path>");
            System.exit(-1);
        }*/
        Configuration configuration = new Configuration();
        Job job = Job.getInstance(configuration, "Total des ventes par ville");
        job.setJarByClass(VentesDriver.class);
        job.setMapperClass(VentesMapper.class);
        job.setReducerClass(VentesReducer.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(LongWritable.class);
        FileInputFormat.addInputPath(job, new Path(args[0]));
        FileOutputFormat.setOutputPath(job, new Path(args[1]));
        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
