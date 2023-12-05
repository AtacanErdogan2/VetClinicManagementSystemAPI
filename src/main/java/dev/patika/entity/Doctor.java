package dev.patika.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Entity
@Table(name = "doctor")
@Data
@RequiredArgsConstructor // Bunu dene!!!
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @NotNull
    @Column(name = "name")
    private String name;

    @NotNull
    @Column(name = "phone")
    private String phone;

    @Email
    @Column(name = "mail")
    private String mail;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @OneToMany(mappedBy = "doctor",fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<Appointment> appointmentList;

    @OneToMany(mappedBy = "doctor",fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
    private List<AvailableDate> availableDateList;
}