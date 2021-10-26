package com.joshod.intro.repositories;

import com.joshod.intro.models.Category;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> {
    Optional<Category> findByName(String name);
}
