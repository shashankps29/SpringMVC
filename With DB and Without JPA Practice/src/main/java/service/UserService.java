package service;

import dao.UserDao;
import model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
//    private List<User> users = new ArrayList<>();

//    public String register(User newUser) {
//        if (!newUser.getPassword().equals(newUser.getConfirmpassword())) {
//            return "Passwords do not match!";
//        }
//        boolean exists = users.stream()
//                .anyMatch(u -> u.getEmail().equalsIgnoreCase(newUser.getEmail()));
//        if (exists) {
//            return "Email is already registered!";
//        }
//
//        users.add(newUser);
//        return "Success";
//    }
//
//    public User login(String email, String password) {
//        return users.stream()
//                .filter(u -> u.getEmail().equalsIgnoreCase(email) && u.getPassword().equals(password))
//                .findFirst()
//                .orElse(null);
//    }

    UserDao dao =
            new UserDao();

    public String register(User user){

        return dao.register(user);
    }

    public User login(String email,
                      String password){

        return dao.login(email,password);
    }
}
