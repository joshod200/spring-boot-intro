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
			posts.add(new Post("Post " + i, "Something"));
		};
		model.addAttribute("posts", posts);
		return "home";
	}

}
