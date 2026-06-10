package service;

import dao.StudentDao;
import model.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    StudentDao dao =
            new StudentDao();

    public String addStudent(Student student) {

        return dao.addStudent(student);

    }
    public List<Student> getStudents(){

        return dao.getStudents();
    }
    public void updateStudent(Student student){

        dao.updateStudent(student);
    }
    public Student getStudentById(int id){

        return dao.getStudentById(id);
    }
    public String deleteStudent(int id){

        return dao.deleteStudent(id);
    }

    public List<Student> searchStudent(String keyword){

        return dao.searchStudent(keyword);
    }
}
