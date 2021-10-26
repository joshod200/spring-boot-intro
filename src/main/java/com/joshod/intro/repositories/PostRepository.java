package com.joshod.intro.repositories;

import com.joshod.intro.models.Category;
import com.joshod.intro.models.Post;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository extends CrudRepository<Post, Long> {
    Iterable<Post> findTop3ByOrderByCreatedAtDesc();
    Iterable<Post> findByCategory(Category category);
}
