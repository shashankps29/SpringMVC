package entity;

import jakarta.persistence.*;

@Entity
public class Subject {

    @Id
    @GeneratedValue
    private Long id;

    private String subjectName;

    @ManyToOne
    @JoinColumn(name = "branch_id")
    private Branch branch;
}