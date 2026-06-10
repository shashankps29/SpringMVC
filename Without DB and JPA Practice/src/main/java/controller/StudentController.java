package controller;

import model.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import service.StudentService;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public String home() {

        return "home";
    }

    @GetMapping("/index")
    public String index() {

        return "index";
    }

    @GetMapping("/detail")
    public String detail(Model model) {

        model.addAttribute(
                "students",
                studentService.getAllStudents()
        );

        return "StudentManagement";
    }

    @PostMapping("/detailposted")
    public String addStudent(Student student) {

        studentService.addStudent(student);

        return "redirect:/detail";
    }


    @GetMapping("/getStudent")
    public String getStudentById(
            @RequestParam("id") int id,
            Model model) {

        Student student =
                studentService.getStudentById(id);

        model.addAttribute(
                "student",
                student
        );

        return "show";
    }
}