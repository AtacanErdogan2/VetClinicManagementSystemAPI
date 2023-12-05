package dev.patika.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Entity
@Table(name = "animal")
@Data
@RequiredArgsConstructor // Bunu dene!!!
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @NotNull
    @Column(name = "name")
    private String name;

    @Column(name = "species")
    private String species;

    @NotNull
    @Column(name = "breed")
    private String breed;

    @Column(name = "gender")
    private String gender;

    @Column(name = "color")
    private String color;

    @OneToMany(mappedBy = "animal",fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<Appointment> appointmentList;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "customer_id")
    private Customer customer;

    @OneToMany(mappedBy = "animal",fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<Vaccine> vaccineList;

}
