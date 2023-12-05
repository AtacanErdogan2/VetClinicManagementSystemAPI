package dev.patika.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "appointment")
@Data
@RequiredArgsConstructor // Bunu dene!!!
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "appointment_date")
    private LocalDateTime appointmentDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "animal_id")
    private Animal animal;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "doctor_id")
    private Doctor doctor;

}
