package dev.patika;

import dev.patika.dal.IDoctorRepo;
import dev.patika.entity.Doctor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class VetClinicApplication {

	public static void main(String[] args) {


		SpringApplication.run(VetClinicApplication.class, args);
		System.out.println();
	}

}
