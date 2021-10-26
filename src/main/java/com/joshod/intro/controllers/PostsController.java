package com.joshod.intro.controllers;

import com.joshod.intro.models.Category;
import com.joshod.intro.models.Post;
import com.joshod.intro.repositories.CategoryRepository;
import com.joshod.intro.repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PostsController {
    
    @Autowired
    PostRepository postRepository;
    @Autowired
    CategoryRepository categoryRepository;
    
    @GetMapping("/")
    public String index(@RequestParam Optional<String> category, Model model) {
        ArrayList<Post> posts;
        if(category.isEmpty()) posts = (ArrayList<Post>) postRepository.findAll();
        else{
            Optional<Category> c = categoryRepository.findByName(category.get());
            posts = (ArrayList<Post>) postRepository.findByCategory(c.get());
            model.addAttribute("category", category.get());
        }
        ArrayList<Category> categories = (ArrayList<Category>) categoryRepository.findAll();
        model.addAttribute("posts", posts);
        model.addAttribute("categories", categories);
        return "posts/index";
    }
    
    @GetMapping("/posts/{id}")
    public String show(@PathVariable("id")String id, Model model){
        Optional<Post> post = postRepository.findById(Long.parseLong(id));
        ArrayList<Post> posts = (ArrayList<Post>) postRepository.findTop3ByOrderByCreatedAtDesc();
        ArrayList<Category> categories = (ArrayList<Category>) categoryRepository.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("post", post.get());
        model.addAttribute("posts", posts);
        return "posts/show";
    }

}
