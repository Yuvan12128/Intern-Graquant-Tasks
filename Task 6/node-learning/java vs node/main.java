import java.nio.file.Files;
import java.nio.file.Path;

class Main {
    public static void main(String[] args) throws Exception {

        System.out.println("1. Program Started");
        System.out.println("3. Program finished");
        String data = Files.readString(Path.of("data1.txt"));
        System.out.println("2. File reading completed");
        System.out.println(data);

    }

}
