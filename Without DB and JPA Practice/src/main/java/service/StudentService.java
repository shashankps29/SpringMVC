package service;

import dao.StudentDao;
import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    private StudentDao studentDao;
    public List<Student> getAllStudents() {

        List<Student> students =
                studentDao.getAllStudents();

        return students.stream()
                .filter(student ->
                        student.getMarks() >= 35
                )
                .toList();
    }

    public void addStudent(Student student) {

        if(student.getMarks() < 0) {

            throw new RuntimeException(
                    "Marks cannot be negative"
            );
        }

        studentDao.addStudent(student);
    }
    public Student getStudentById(int id) {

        return studentDao.getStudentById(id);
    }
}