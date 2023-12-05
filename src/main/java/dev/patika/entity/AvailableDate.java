package dev.patika.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.time.LocalDate;

@Entity
@Table(name = "available_date")
@Data
@RequiredArgsConstructor // Bunu dene!!!
public class AvailableDate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @NotNull
    @Temporal(TemporalType.DATE)
    @Column(name = "available_date")
    private LocalDate availableDate;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "doctor_id")
    private Doctor doctor;
}
