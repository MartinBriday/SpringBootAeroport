package com.intiformation.SpringBootAeroport.controller;

import com.intiformation.SpringBootAeroport.model.Utilisateur;
import com.intiformation.SpringBootAeroport.service.RoleService;
import com.intiformation.SpringBootAeroport.service.UtilisateurService;
import com.intiformation.SpringBootAeroport.service.VolService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UtilisateurService utilisateurService;
	@Autowired
	private VolService volService;
	@Autowired
	private RoleService roleService;
	
	@GetMapping("/index")
	public String getIndex(@RequestParam(name = "category", required = false) String category, Model model) {
		model.addAttribute("category", category);
		if (category != null && category.equals("utilisateur")) {
			model.addAttribute("listeUtilisateur", utilisateurService.get());
		}
		else if (category != null && category.equals("vol")) {
			model.addAttribute("listeVol", volService.get());
		}
		return "index_admin";
	}
	
	@GetMapping("/register_utilisateur_form")
	public String getRegisterUtilisateurForm(Model model) {
		model.addAttribute("isAdmin", true);
		return "register_utilisateur";
	}
	
	@PostMapping("/register_utilisateur")
	public String registerUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur) {
		BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
		String cryptedPwd = bcpe.encode(utilisateur.getPassword());
		utilisateur.setPassword(cryptedPwd);
		utilisateur.setRole(roleService.getRole("CLIENT"));
		utilisateurService.save(utilisateur);
		return "redirect:/admin/index";
	}
	
	@GetMapping("/update_utilisateur")
	public String getUpdateUtilisateur(@RequestParam("idUtilisateur") int id, Model model) {
		model.addAttribute("utilisateur", utilisateurService.get(id));
		return "modify_utilisateur";
	}
	
	@PostMapping("/update_utilisateur")
	public String updateUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur) {
		utilisateurService.update(utilisateur);
		return "redirect:/admin/index";
	}
	
	@GetMapping("/delete_utilisateur/{idUtilisateur}")
	public String deleteUtilisateur(@PathVariable("idUtilisateur") int id) {
		utilisateurService.delete(id);
		return "redirect:/admin/index";
	}
}
