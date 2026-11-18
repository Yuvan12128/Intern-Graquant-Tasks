import java.nio.file.Path;
import java.nio.file.Files;

/**
 * demo
 */
public class demo {
    static void job() throws Exception {
        System.out.println("Job 1 ");
        String data = Files.readString(Path.of("data1.txt"));
        System.out.println(data);

    }

    static void job2() throws Exception {
        System.out.println("Job 2 ");
        String data = Files.readString(Path.of("data2.txt"));
        System.out.println(data);

    }

    static void job3() throws Exception {
        System.out.println("Job 3 ");
        String data = Files.readString(Path.of("data3.txt"));
        System.out.println(data);

    }

    public static void main(String[] args) throws Exception {
        job3();
        job2();
        job();

    }

}
