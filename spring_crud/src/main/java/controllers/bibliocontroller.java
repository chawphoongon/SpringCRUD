package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import beans.biblio;
import beans.collection;
import beans.user;
import dao.BiblioDao;

@Controller
public class bibliocontroller {

	@Autowired
	BiblioDao dao;

	
	/*
	 * @GetMapping("/") public String showfor(Model m, HttpServletRequest
	 * req,HttpServletResponse res) { biblio b = new biblio();
	 * m.addAttribute("data",b); return "Adminview"; }
	 */

	@GetMapping("/book")
	public String book(Model m, HttpServletRequest req, HttpServletResponse res) {
		m.addAttribute("list", new biblio());
		return "bibliocreate";
	}

	@GetMapping("/collection")
	public String collection(Model m, HttpServletRequest req, HttpServletResponse res) {
		m.addAttribute("list", new collection());
		return "addcollection";
	}

	// For Clicking Create Biblio Button
	@PostMapping(value = "/bsave")
	public String save(@ModelAttribute("biblio") biblio biblio, RedirectAttributes redir) {
		dao.save(biblio);
		return "redirect:/";
	}

}
