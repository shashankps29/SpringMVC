package controller;

import model.User;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class Auth {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String loginPage(){

        return "login";
    }

    @GetMapping("/register")
    public String registerPage(){

        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, Model model){
        String res = userService.register(user);
        if(res.equals("Success")){
            return "login";
        }
     else {
        model.addAttribute("error", res);
        return "register";
    }
}

    @PostMapping("/login")
    public String loginUser(

            @RequestParam("email") String email,
            @RequestParam("password") String password,

            Model model
    ) {

        User user =
                userService.login(email, password);

        if(user != null){

            model.addAttribute(
                    "userName",
                    user.getUsername()
            );

            return "dashboard";
        }

        else{

            model.addAttribute(
                    "error",
                    "Invalid email or password"
            );

            return "login";
        }
    }

    }

