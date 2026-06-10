package dao;

import config.DatabaseConnection;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public String register(User user){

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String checkQuery =
                    "SELECT * FROM users WHERE email=?";

            PreparedStatement checkPs =
                    con.prepareStatement(checkQuery);

            checkPs.setString(
                    1,
                    user.getEmail()
            );

            ResultSet rs =
                    checkPs.executeQuery();

            if(rs.next()){

                return "Email already exists";
            }

            String sql =
                    "INSERT INTO users(username,email,password) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(
                    1,
                    user.getUsername()
            );

            ps.setString(
                    2,
                    user.getEmail()
            );

            ps.setString(
                    3,
                    user.getPassword()
            );

            ps.executeUpdate();

            con.close();

            return "Success";
        }

        catch(Exception e){

            e.printStackTrace();
        }

        return "Failed";
    }

    public User login(String email,
                      String password){

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "SELECT * FROM users WHERE email=? AND password=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1,email);
            ps.setString(2,password);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()){

                User user =
                        new User();

                user.setId(rs.getInt("id"));

                user.setUsername(
                        rs.getString("username")
                );

                user.setEmail(
                        rs.getString("email")
                );

                return user;
            }

        }

        catch(Exception e){

            e.printStackTrace();
        }

        return null;
    }
}