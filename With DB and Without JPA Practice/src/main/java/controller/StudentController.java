package controller;

import model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.StudentService;

import java.util.List;

@Controller
public class StudentController {

    @GetMapping("/")
    public String index() {

        return "index";
    }




    @GetMapping("/studentmanagement")
    public String student(){
        return "StudentManagement";
    }




    @GetMapping("/addStudent")
    public String addStudentPage() {

        return "addStudent";
    }






    @PostMapping("/saveStudent")
    public String saveStudent(

            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("course") String course,

            Model model
    ) {

        Student student =
                new Student(name,email,course);

        StudentService service =
                new StudentService();

        String result =
                service.addStudent(student);

        model.addAttribute(
                "error",
                result
        );

        return "addStudent";
    }




    @GetMapping("/viewAll")
    public String getAll(Model model){

        StudentService service =
                new StudentService();

        List<Student> students =
                service.getStudents();

        model.addAttribute(
                "students",
                students
        );

        return "viewStudents";
    }





    @GetMapping("/updateStudentPage")
    public String updatePage(){

        return "searchStudent";
    }







    @GetMapping("/findStudent")
    public String findStudent(

            @RequestParam("id") int id,

            Model model
    ){

        StudentService service =
                new StudentService();

        Student student =
                service.getStudentById(id);

        if(student == null){

            model.addAttribute(
                    "error",
                    "Student Does Not Exist"
            );

            return "searchStudent";
        }

        model.addAttribute(
                "student",
                student
        );

        return "updateStudent";
    }






    @PostMapping("/updateStudent")
    public String updateStudent(

            @RequestParam("id") int id,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("course") String course
    ){

        Student student =
                new Student();

        student.setId(id);
        student.setName(name);
        student.setEmail(email);
        student.setCourse(course);

        StudentService service =
                new StudentService();

        service.updateStudent(student);

        return "viewStudents";
    }



    @GetMapping("/deleteStudentPage")
    public String deletePage(){

        return "deleteStudent";
    }





    @PostMapping("/deleteStudent")
    public String deleteStudent(

            @RequestParam("id") int id,

            Model model
    ){

        StudentService service =
                new StudentService();

        String result =
                service.deleteStudent(id);


        if(result.equals(
                "Student Deleted Successfully"
        )){

            List<Student> students =
                    service.getStudents();

            model.addAttribute(
                    "students",
                    students
            );

            model.addAttribute(
                    "success",
                    result
            );

            return "viewStudents";
        }

        // ERROR CASE

        else{

            model.addAttribute(
                    "error",
                    result
            );

            return "deleteStudent";
        }
    }


    @GetMapping("/search")
    public String search(){
        return "searchpage";

    }
    @GetMapping("/searchStudent")
    public String searchStudent(

            @RequestParam("keyword") String keyword,

            Model model
    ){

        StudentService service =
                new StudentService();

        List<Student> students =
                service.searchStudent(keyword);

        if(students.isEmpty()){

            model.addAttribute(
                    "error",
                    "Student Does Not Exist"
            );

            return "searchpage";
        }

        model.addAttribute(
                "students",
                students
        );

        return "viewStudents";
    }
}