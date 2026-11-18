import java.nio.file.Files;
import java.nio.file.Path;

public class File {

    static void readFile(String file) {
        try {
            String data = Files.readString(Path.of(file));
            System.out.println(file + " " + data);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws Exception {

        // Thread t1 = new Thread();
        // readFile("data1.txt");
        // //readFile("data2.txt");
        // //readFile("data3.txt");
        // Thread.sleep(4000);
        // Thread.sleep(20);
        // t1.start();

        // Thread t2 = new Thread();
        // readFile("data2.txt");
        // Thread.sleep(2000);
        // t2.start();

        // Thread t3 = new Thread();
        // readFile("data3.txt");
        // t3.start();

        Thread t1=new Thread( () ->readFile("data1.txt"));
        Thread t2=new Thread( () ->readFile("data2.txt"));
        Thread t3=new Thread( () ->readFile("data3.txt"));
        t1.start();
        t2.start();
        t3.start();
       
    }
}