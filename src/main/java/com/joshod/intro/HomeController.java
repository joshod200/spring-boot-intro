package com.joshod.intro;

import com.joshod.intro.models.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index(Model model) {
		ArrayList<Post> posts = new ArrayList();
		for (int i = 1; i < 7; i++) {
			int image = (Math.random() <= 0.5) ? 1 : 2; // random number between 1 and 2
			posts.add(new Post(image + ".jpg", "Post " + i, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat ........."));
		}
		model.addAttribute("posts", posts);
		return "home";
	}

}
