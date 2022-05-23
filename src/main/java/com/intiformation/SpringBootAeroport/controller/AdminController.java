package com.intiformation.SpringBootAeroport.controller;

import com.intiformation.SpringBootAeroport.service.UtilisateurService;
import com.intiformation.SpringBootAeroport.service.VolService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UtilisateurService utilisateurService;
	@Autowired
	private VolService volService;
	
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("listeUtilisateur", utilisateurService.get());
		model.addAttribute("listeVol", volService.get());
		return "index_admin";
	}
}
