package dev.patika.business.abstracts;

import dev.patika.dto.request.AnimalRequest;
import dev.patika.dto.response.standard.AnimalResponse;
import org.springframework.data.domain.Page;

import java.util.List;

public interface IAnimalService {
    AnimalResponse getById(Long id);
    List<AnimalResponse> getByCustomerId(Long id);

    AnimalResponse getByName(String name);

    AnimalResponse create(AnimalRequest request);

    void delete(Long id);

    AnimalResponse update(Long id, AnimalRequest request);

    Page<AnimalResponse> cursor(int page, int size);
}
