package StudentController;

import StudentDAO.StudentDAO;
import StudentModel.StudentModel;

import java.util.List;

public class StudentController {

    private final StudentDAO dao;

    public StudentController(StudentDAO dao) {
        this.dao = dao;
    }

    public void addStudent(StudentModel student) {
        dao.save(student);
    }

    public void getStudent(int searchId) {
        StudentModel student = dao.findById(searchId);
        if (student != null) {
            System.out.println(student);
        } else System.out.println("Student Not Found!");
    }

    public void getAllStudent() {
        List<StudentModel> students = dao.findAll();
        for (StudentModel student : students) {
            System.out.println(student);
        }
    }

    public void updateStudent(StudentModel student) {
        if (dao.findById(student.getId()) != null) {
            dao.update(student);
            System.out.println("Student updated!");
        } else {
            System.out.println("Student not found!");
        }
    }

    public void deleteStudent(int id) {
        if (dao.findById(id) != null) {
            dao.deleteById(id);
            System.out.println("Student deleted!");
        } else {
            System.out.println("Student not found!");
        }
    }
}
