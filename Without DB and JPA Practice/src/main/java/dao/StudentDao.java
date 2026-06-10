package dao;

import model.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentDao {
        private List<Student> students =
                new ArrayList<>();

    public List<Student> getAllStudents() {

        return students;
    }
    public List<Integer> getPassingMarks(List<Integer> marks) {
        return marks.stream()
                .filter(m -> m >= 35)
                .sorted()
                .toList();
    }
//    public List<Integer> addStudent(List<Integer> marks) {
//        return marks.stream()
//                .filter(m -> m >= 35)
//                .sorted()
//                .toList();
//    }

    public void addStudent(Student student) {

        students.add(student);

        System.out.println(
                "Student Added Successfully"
        );
    }


    public Student getStudentById(int id) {

        for(Student student : students){

            if(student.getId() == id){

                return student;
            }
        }

        return null;
    }
}
