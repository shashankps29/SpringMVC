package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {

    @GetMapping("/")
    public String home() {
        return "home";
    }
    @GetMapping("/form")
    public String form(){
        return "form";


    }

    @GetMapping("/search")
    public RedirectView view(@RequestParam("query") String query) {
        String url = "https://www.google.com/search?q=" + query;

        RedirectView redirectView = new RedirectView();

        redirectView.setUrl(url);


        return redirectView;

    }
}


