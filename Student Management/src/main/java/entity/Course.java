package entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name="course")
@Getter
@Setter
public class Course {

    @Id
    @GeneratedValue
    private Long id;

    private String courseName;

    @OneToMany(mappedBy = "course")
    private List<Branch> branches;
}
