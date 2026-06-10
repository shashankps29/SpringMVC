package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Welcome {

    @GetMapping("/")
    public String welcome(){

        return "Welcome";
    }

    @PostMapping("/welcome")
    public String user(

            @RequestParam("username")
            String username,

            Model model
    ){

        model.addAttribute(
                "username",
                username
        );

        return "userwelcome";
    }
}