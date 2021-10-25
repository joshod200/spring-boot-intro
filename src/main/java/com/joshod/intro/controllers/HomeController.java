package com.joshod.intro.controllers;

import com.joshod.intro.models.Post;
import com.joshod.intro.repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HomeController {
    
    @Autowired
    PostRepository postRepository;
    
    @GetMapping("/")
    public String index(Model model) {
            ArrayList<Post> posts = (ArrayList<Post>) postRepository.findAll();
            model.addAttribute("posts", posts);
            return "home";
    }
    
    @GetMapping("/posts/{id}")
    public String show(@PathVariable("id")String id, Model model){
        Optional<Post> post = postRepository.findById(Long.parseLong(id));
        ArrayList<Post> posts = (ArrayList<Post>) postRepository.findTop3ByOrderByCreatedAtDesc();
        model.addAttribute("post", post.get());
        model.addAttribute("posts", posts);
        return "show";
    }

}
