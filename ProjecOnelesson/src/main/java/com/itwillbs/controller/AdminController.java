package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	@Inject
	private AdminService adminService;
	
	@GetMapping("/adminInsert")
	public String adminInsert() {
		System.out.println("AdminController adminInsert()");
		
		return "admin/adminInsert";
	}
	
	@PostMapping("/adminInsertPro")
	public String adminInsertPro(AdminDTO adminDTO) {
		System.out.println("AdminController adminInsertPro()");
		System.out.println(adminDTO);
		
		adminService.adminInsert(adminDTO);
		
		return "redirect:/admin/adminLogin";
	}
	
	@GetMapping("/adminLogin")
	public String adminLogin() {
		System.out.println("AdminController adminLogin()");
		
		return "admin/adminLogin";
	}
	
	@PostMapping("/adminLoginPro")
	public String adminLoginPro(AdminDTO adminDTO, HttpSession session) {
		System.out.println("AdminController adminLoginPro()");
		System.out.println(adminDTO);
		
		AdminDTO adminDTO2 = adminService.adminCheck(adminDTO);
		
		if(adminDTO2 != null) {
			session.setAttribute("id", adminDTO2.getId());
			return "redirect:/admin/adminMain";
		}else {
			return "admin/msg";
		}
	}
	
	@GetMapping("/adminMain")
	public String adminMain() {
		System.out.println("AdminController adminMain()");
		
		return "admin/adminMain";
	}
	
	@GetMapping("/adminLogout")
	public String adminLogout(HttpSession session) {
		System.out.println("AdminController adminLogout()");
		
		session.invalidate();
		
		return "redirect:/admin/adminLogin";
	}
	
	@GetMapping("/adminFindPass")
	public String adminFindPass(HttpSession session, Model model) {
		System.out.println("AdminController adminFindPass()");
		
		String id = (String)session.getAttribute("id");
		
		AdminDTO adminDTO = adminService.getAdmin(id);
		
		model.addAttribute("adminDTO", adminDTO);
		
		return "admin/adminFindPass";
	}
	
	@PostMapping("/adminFindPassPro")
	public String adminFindPassPro(AdminDTO adminDTO) {
		System.out.println("AdminController adminFindPassPro()");
		System.out.println(adminDTO);
		
		AdminDTO adminDTO2 = adminService.adminCheck(adminDTO);
		
		if(adminDTO2 != null) {
			adminService.updateAdmin(adminDTO);
			return "redirect:/admin/adminLogin";
		}else {
			return "admin/msg";
		}
	}
	
	
}
