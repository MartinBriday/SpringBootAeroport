package com.intiformation.SpringBootAeroport.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import com.intiformation.SpringBootAeroport.model.Aeroport;
import com.intiformation.SpringBootAeroport.model.Passager;
import com.intiformation.SpringBootAeroport.model.Role;
import com.intiformation.SpringBootAeroport.model.Utilisateur;
import com.intiformation.SpringBootAeroport.model.Vol;
import com.intiformation.SpringBootAeroport.service.AeroportService;
import com.intiformation.SpringBootAeroport.service.PassagerService;
import com.intiformation.SpringBootAeroport.service.RoleService;
import com.intiformation.SpringBootAeroport.service.UtilisateurService;
import com.intiformation.SpringBootAeroport.service.VolService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController
{

	@Autowired
	private RoleService roleService;
	@Autowired
	private UtilisateurService utilisateurService;
	@Autowired
	private VolService volService;
	@Autowired
	private PassagerService passagerService;
	@Autowired
	private AeroportService aeroportService;

	@GetMapping("/init")
	public String init()
	{
		roleService.save(new Role("ADMIN"));
		roleService.save(new Role("CLIENT"));
		Utilisateur _u1 = new Utilisateur("Dupond", "Pierre", "p.dupond@gmail.com", "root");
		BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
		String cryptedPwd = bcpe.encode(_u1.getPassword());
		_u1.setPassword(cryptedPwd);
		_u1.setRole(roleService.getRole("ADMIN"));
		utilisateurService.save(_u1);
		Passager _p1 = new Passager("Marie", "Dupont", "m.dupont@gmail.com");
		Passager _p2 = new Passager("Jack", "Cherbourg", "j.cherbourg@gmail.com");
		passagerService.save(_p1);
		passagerService.save(_p2);
		Aeroport _a1 = new Aeroport("Paris");
		Aeroport _a2 = new Aeroport("Berlin");
		Aeroport _a3 = new Aeroport("Amsterdam");
		aeroportService.save(_a1);
		aeroportService.save(_a2);
		aeroportService.save(_a3);
		Vol _v1 = new Vol(LocalDate.parse("2020-05-20"), LocalTime.parse("10:00:00"), LocalDate.parse("2020-05-21"),
				LocalTime.parse("09:00:00"), 123.0);
		_v1.setAeroportDepart(aeroportService.get(_a1.getId()));
		_v1.setAeroportArrivee(aeroportService.get(_a2.getId()));
		Vol _v2 = new Vol(LocalDate.parse("2020-04-11"), LocalTime.parse("14:23:00"), LocalDate.parse("2020-04-11"),
				LocalTime.parse("19:00:00"), 56.0);
		_v2.setAeroportDepart(aeroportService.get(_a2.getId()));
		_v2.setAeroportArrivee(aeroportService.get(_a3.getId()));
		volService.save(_v1);
		volService.save(_v2);
		return "redirect:/accueil";
	}

	@GetMapping("/login")
	public String getLogin()
	{
		return "login";
	}

	@GetMapping("/register_utilisateur_form")
	public String getRegisterUtilisateurForm()
	{
		return "register_utilisateur";
	}

	@PostMapping("/register_utilisateur")
	public String registerUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur)
	{
		BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
		String cryptedPwd = bcpe.encode(utilisateur.getPassword());
		utilisateur.setPassword(cryptedPwd);
		utilisateur.setRole(roleService.getRole("CLIENT"));
		utilisateurService.save(utilisateur);
		return "redirect:/login";
	}

	@GetMapping("/accueil")
	public String getAccueil()
	{
		return "accueil";
	}

	@GetMapping("/reservation_vol")
	public String getReservationVol()
	{
		return "reservation_vol";
	}

	@GetMapping("/nouveau_vol_form")
	public String getNewVol()
	{
		return "form_new_vol";
	}

	@GetMapping("/affichageVols")
	public String getAffichageVols(Model model)
	{
		model.addAttribute("listeVol", volService.get());
		return "affichageVols";
	}

	@PostMapping("/vol_choisi")
	public String volChoisi(@ModelAttribute("vol") Vol vol, Model m)
	{
		m.addAttribute("volChoisi", vol);
		return "infos_client_passager";
	}

	@GetMapping("/infos_client_passager")
	public String getReservation_vol(Authentication authentification, Model m)
	{
		User u = (User) authentification.getPrincipal();
		Utilisateur ut = utilisateurService.get(u.getUsername());
		m.addAttribute("utilisateur", ut);
		return "infos_client_passager";
	}

	@PostMapping("/recupInfo")
	public String recupInfo(@RequestParam("volChoisi") Vol volChoisi, @ModelAttribute("passager") Passager passager,
			@RequestParam("listePassager") List<Passager> listePassager, Model m, @RequestParam("bouton") String bouton)
	{
		m.addAttribute("listePassagerFinal", listePassager.add(passager));
		m.addAttribute("volChoisi", volChoisi);
		if (bouton == "ajouterPassager")
		{
			return "infos_passager_supplementaire";
		} else
		{
			return "paiement";
		}
	}

}
