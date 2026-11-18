package StudentDAO;

import StudentModel.StudentModel;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentDAO {
    private final Map<Integer, StudentModel> students = new HashMap<>();

    public void save(StudentModel student) {
        students.put(student.getId(), student);
    }

    public StudentModel findById(int id) {
        return students.get(id);
    }

    public List<StudentModel> findAll() {
        return new ArrayList<>(students.values());
    }

    public void update(StudentModel student) {
        students.put(student.getId(), student);
    }

    public void deleteById(int id) {
        students.remove(id);
    }
}
