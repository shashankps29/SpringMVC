package entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name="branch")
@Getter
@Setter
public class Branch {

    @Id
    @GeneratedValue
    private Long id;

    private String branchName;

    @ManyToOne
    @JoinColumn(name = "course_id")
    private Course course;

    @OneToMany(mappedBy = "branch")
    private List<Subject> subjects;
}
