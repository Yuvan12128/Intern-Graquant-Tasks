
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

class file {

    public static void main(String[] args) {
        file3();
        System.out.println("--------------file3----------------");
        file1();
        System.out.println("--------------file1----------------");
        file2();
        System.out.println("--------------file2----------------");
        file3();
        System.out.println("--------------file4----------------");

    }

    static void file1() {
        try {
            FileReader fr = new FileReader("file1.txt");

            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                System.out.println(line);
                line = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    static void file2() {
        try {
            FileReader fr = new FileReader("file2.txt");

            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                System.out.println(line);
                line = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    static void file3() {
        try {
            FileReader fr = new FileReader("file3.txt");

            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                System.out.println(line);
                line = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    static void file4() {
        try {
            FileReader fr = new FileReader("file4.txt");

            BufferedReader br = new BufferedReader(fr);
            String line = br.readLine();
            while (line != null) {
                System.out.println(line);
                line = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
