package kr.co.hoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.hoon.DTO.User;
import kr.co.hoon.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@ModelAttribute(name = "defaultUser")
	public User defaultUser() {
		User user = new User();
		user.setId("id");
		user.setPassword("password");
		user.setName("name");
		user.setEmail("email");
		user.setGender("gender");
		user.setPhoneNumber("phoneNumber");
		return user;
	}
	@GetMapping
	public String showIndex() {
		return "index";
	}
	
	
	@GetMapping("/list")
	public String getAll(Model model) {
		model.addAttribute("list", userService.getUserAll());
		return "userList";
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute(name = "defaultUser") User user, Model model
			, RedirectAttributes redirectAttr) {
		int result = userService.add(user);
		redirectAttr.addFlashAttribute("joinResult" , result); 
		return "redirect:/user";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam(name = "id") String id, String password, HttpSession session
			,RedirectAttributes redirectAttr) {
		User userForLoginCheck = new User();
		
		userForLoginCheck = userService.login(id);
		if(userForLoginCheck == null) {
			return "failToLogin";
		}
		
		if(!password.equals(userForLoginCheck.getPassword())) {
			return "failToLogin";
		}
		session.setAttribute("loginId", id);
		return "redirect:/user";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "logout";
	}
	
}