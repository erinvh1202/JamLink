package com.claim.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Person;
import com.claim.entity.Post;
import com.claim.entity.Search;
import com.claim.service.PersonService;
import com.claim.service.PostService;
import com.claim.service.SendMail;

@Controller
public class UserController {
	@Autowired
	private PersonService personService;

	@Autowired
	private SendMail sendMail;

	@Autowired
	private PostService postService;

	@RequestMapping("/") // the root of your website is the index page
	public String index() {
		return "index"; // tell spring to find and display the index page
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index(Model model, @ModelAttribute("userLogin") Person user) {
		return new ModelAndView("index", "userLogin", user);
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(Model model) {
		return new ModelAndView("login", "userLogin", new Person());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView handlelogin(Model model, @ModelAttribute("userLogin") Person userLogin, HttpSession session) {

		Person p = this.personService.login2(userLogin.getEmail(), userLogin.getPassword());

		if (p != null) {
			System.out.println("USER NOT NULL!!!!!");
			session.setAttribute("loggedInUser", p);
			
			
			int updateRating = p.getRating();
			int noOfRating = p.getNoOfRatings();
			int avgRating = updateRating;
			if(p.getRating() != 0 ) {
			  avgRating = updateRating/noOfRating;
				
			}
			
			session.setAttribute("avgRating", avgRating);
			this.addUserPost(model, p.getEmail());
			return new ModelAndView("profile", "userLogin",p);
		} else {
			model.addAttribute("logInError", "username or password invalid");
			return new ModelAndView("index");
		}
	}

	@RequestMapping(value = "/forum", method = RequestMethod.POST)
	public String myPost(Model model, @ModelAttribute("post") Post post) {
		List<Post> posts = postService.savePost(post);
		this.addUserPost(model, post.getEmail());		
		return "forum";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup(Model model) {
		return new ModelAndView("signup", "userLogin", new Person());
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(Model model, @ModelAttribute("userLogin") Person newUser) {
		// this.personService.signUp(newUser);
		this.sendMail.sendMail(newUser.getEmail(), "Welcome to JamLink", "Thank you for signing up to JamLink! We are here to help you in your journey to networking with like minded musicians so you can ROCK AND ROLL! Now, let's get ready to JAM!");
		return new ModelAndView("registration", "userRegistration", newUser);
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView registration(Model model, @ModelAttribute("userLogin") Person user, HttpSession session) {
		System.out.println(user);

		this.personService.signUp(user);
		System.out.println("Seeking: " + user.getSeeking());
		model.addAttribute("userLogin", user);
		session.setAttribute("loggedInUser", user);
		return new ModelAndView("profile");
	}
	

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public ModelAndView profile(Model model, @ModelAttribute("userLogin")Person user, HttpSession session) {
		System.out.println("Model User: "+user);
		
		personService.signUp(user);
		return new ModelAndView("profile", "userLogin", user);
	}
	
	@RequestMapping(value = "/displayProfile", method = RequestMethod.GET)
	public ModelAndView displayProfile(Model model,@RequestParam("email")String email) {
		System.out.println("User email: " + email);
		Person user = personService.find(email);
		return new ModelAndView("profile", "userLogin", user);
	}
	
	@RequestMapping(value = "/browse", method = RequestMethod.GET)
	public ModelAndView browse(Model model, @ModelAttribute("userLogin") Person user) {
		return new ModelAndView("search", "searchQuery", new Search());
	}

	@RequestMapping(value = "/updateprofile", method = RequestMethod.GET)
	public ModelAndView updateprofile(Model model, HttpSession session, @RequestParam("email") String email) {
		System.out.println("User email: " + email);
		Person user = personService.find(email);
		
		return new ModelAndView("updateTest", "userLogin", user);
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search(Model model, @ModelAttribute("searchQuery") Search searchQuery, HttpSession session) {		
		ArrayList<Person> userList = personService.search(searchQuery.getInstrument(), searchQuery.getLocation());
		session.setAttribute("userList", userList);
		return new ModelAndView("search");
	}
	

	@RequestMapping(value = "/forum", method = RequestMethod.GET)
	public ModelAndView forum(Model model, @ModelAttribute("post") Post post) {
		model.addAttribute("posts", postService.findAllPosts());
		return new ModelAndView("forum", "post", post);
	}

	/*@RequestMapping(value="/post",method=RequestMethod.POST)
	public String post(Model model,@ModelAttribute("post") Post post) {
		List<Post> posts= postService.savePost(post);
		this.addUserPost(model, post.getEmail());
		return "home";
	}*/
	private void addUserPost(Model model, String email) {
		model.addAttribute("post", new Post());
		model.addAttribute("posts", postService.findAllPosts());
	}


	
	@RequestMapping(value = "/rate", method = RequestMethod.GET)
	public ModelAndView test(Model model,@RequestParam("rating")int rating, HttpSession session) {
		System.out.println("Rating received: "+rating);
		
		Person p = (Person) session.getAttribute("loggedInUser");
		System.out.println(p);
		
		
		int updateRating = p.getRating()+rating;
		p.setRating(updateRating);
		
		int noOfRating = p.getNoOfRatings()+1;
		p.setNoOfRatings(noOfRating);
		personService.signUp(p);
		
		int avgRating = updateRating/noOfRating;
		
		session.setAttribute("avgRating", avgRating);
		session.setAttribute("loggedInUser", p);
		return new ModelAndView("profile", "userLogin",p);
	}
		
		
		@RequestMapping(value="/upload",method=RequestMethod.POST)
		public String upload(@RequestParam("file")MultipartFile file,HttpSession session,Model model) {
			Person p=(Person)session.getAttribute("loggedInUser");
			
					try {
						p.setProfilePic(file.getBytes());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					personService.signUp(p); 
					
		   this.addUserPost(model, p.getEmail());
		   model.addAttribute("userLogin", p);
		   session.setAttribute("userLogin", p);
			return "profile";
	
	}
		
			
		
		
}

