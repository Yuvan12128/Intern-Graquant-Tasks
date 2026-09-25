
import StudentController.StudentController;
import StudentDAO.StudentDAO;
import StudentModel.StudentModel;
import java.util.Scanner;

class Main {
    public static void main(String[] args) {

        StudentDAO dao = new StudentDAO();
        StudentController controller = new StudentController(dao);
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.println("1. Add StudentModel");
            System.out.println("2. View StudentModel");
            System.out.println("3.View All StudentModel");
            System.out.println("4. Update StudentModel");
            System.out.println("5. Delete StudentModel");
            System.out.println("6. Exit");
            System.out.println("Enter Choice : ");
            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Enter Id : ");
                    int id = sc.nextInt();
                    sc.nextLine();
                    System.out.println("Enter Name : ");
                    String name = sc.nextLine();
                    System.out.println("Enter Email : ");
                    String email = sc.nextLine();
                    System.out.println("Enter Age : ");
                    int age = sc.nextInt();
                    controller.addStudent(new StudentModel(id, name, email, age));
                    System.out.println("Student Add SuccessFully");
                    break;

                case 2:
                    System.out.println("Enter Id : ");
                    int searchId = sc.nextInt();
                    controller.getStudent(searchId);
                    break;

                case 3:
                    controller.getAllStudent();
                    break;

                case 4:
                    System.out.println("Enter ID :");
                    int updateId = sc.nextInt();
                    sc.nextLine();
                    System.out.println("Enter Name :");
                    String updateName = sc.nextLine();
                    System.out.println("Enter Email :");
                    String updateEmail = sc.nextLine();
                    System.out.println("Enter Age :");
                    int updateAge = sc.nextInt();
                    controller.updateStudent(new StudentModel(updateId, updateName, updateEmail, updateAge));
                    break;

                case 5:
                    System.out.print("Enter ID: ");
                    int deleteId = sc.nextInt();
                    controller.deleteStudent(deleteId);
                    break;

                case 6:
                    System.out.println("Program Ended.");
                    sc.close();
                    return;

                default:
                    System.out.println("Invalid choice!");
            }

        }
    }


}
