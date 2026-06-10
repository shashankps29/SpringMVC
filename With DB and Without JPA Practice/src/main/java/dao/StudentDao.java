package dao;

import config.DatabaseConnection;
import model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

public class StudentDao {

    public List<Student> getStudents() {

        List<Student> students =
                new ArrayList<>();

        try {

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "SELECT * FROM students";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ResultSet rs =
                    ps.executeQuery();

            while (rs.next()) {

                Student student =
                        new Student();

                student.setId(
                        rs.getInt("id")
                );

                student.setName(
                        rs.getString("name")
                );

                student.setEmail(
                        rs.getString("email")
                );

                student.setCourse(
                        rs.getString("course")
                );

                students.add(student);
            }

            con.close();

        }

        catch (Exception e) {

            e.printStackTrace();
        }

        return students;
    }


    public String addStudent(Student student) {

        try {

            Connection con =
                    DatabaseConnection.getConnection();

            String checkSql =
                    "SELECT * FROM students WHERE email=?";

            PreparedStatement checkPs =
                    con.prepareStatement(checkSql);

            checkPs.setString(
                    1,
                    student.getEmail()
            );

            ResultSet rs =
                    checkPs.executeQuery();

            if(rs.next()){

                return "Student Already Exists";
            }

            String sql =
                    "INSERT INTO students(name,email,course) VALUES(?,?,?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(
                    1,
                    student.getName()
            );

            ps.setString(
                    2,
                    student.getEmail()
            );

            ps.setString(
                    3,
                    student.getCourse()
            );

            ps.executeUpdate();

            con.close();

            return "Student Added Successfully";
        }

        catch (Exception e) {

            e.printStackTrace();
        }

        return "Failed";
    }


    public void updateStudent(Student student){

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "UPDATE students SET name=?,email=?,course=? WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1,student.getName());
            ps.setString(2,student.getEmail());
            ps.setString(3,student.getCourse());
            ps.setInt(4,student.getId());

            ps.executeUpdate();

            con.close();

        }

        catch(Exception e){

            e.printStackTrace();
        }
    }


    public Student getStudentById(int id){

        Student student = null;

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "SELECT * FROM students WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1,id);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()){

                student =
                        new Student();

                student.setId(
                        rs.getInt("id")
                );

                student.setName(
                        rs.getString("name")
                );

                student.setEmail(
                        rs.getString("email")
                );

                student.setCourse(
                        rs.getString("course")
                );
            }

            con.close();
        }

        catch(Exception e){

            e.printStackTrace();
        }

        return student;
    }
    public String deleteStudent(int id){

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "DELETE FROM students WHERE id=?";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setInt(1,id);

            int rows =
                    ps.executeUpdate();

            con.close();

            if(rows > 0){

                return "Student Deleted Successfully";
            }

            else{

                return "Student Does Not Exist";
            }
        }

        catch(Exception e){

            e.printStackTrace();
        }

        return "Delete Failed";
    }
    public List<Student> searchStudent(String keyword){

        List<Student> students =
                new ArrayList<>();

        try{

            Connection con =
                    DatabaseConnection.getConnection();

            String sql =
                    "SELECT * FROM students " +
                            "WHERE CAST(id AS TEXT) LIKE ? " +
                            "OR LOWER(name) LIKE LOWER(?) " +
                            "OR LOWER(email) LIKE LOWER(?)";

            PreparedStatement ps =
                    con.prepareStatement(sql);

            ps.setString(1,"%" + keyword + "%");
            ps.setString(2,"%" + keyword + "%");
            ps.setString(3,"%" + keyword + "%");

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()){

                Student student =
                        new Student();

                student.setId(
                        rs.getInt("id")
                );

                student.setName(
                        rs.getString("name")
                );

                student.setEmail(
                        rs.getString("email")
                );

                student.setCourse(
                        rs.getString("course")
                );

                students.add(student);
            }

            con.close();
        }

        catch(Exception e){

            e.printStackTrace();
        }

        return students;
    }
}