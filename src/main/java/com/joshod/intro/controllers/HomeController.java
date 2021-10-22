package com.joshod.intro.controllers;

import com.joshod.intro.models.Post;
import com.joshod.intro.repositories.PostRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;

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

}
