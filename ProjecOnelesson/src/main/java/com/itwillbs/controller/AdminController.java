package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	@Inject
	private AdminService adminService;
	
	@GetMapping("/adminMain")
	public String adminMain() {
		System.out.println("AdminController adminMain()");
		return "admin/adminMain";
	}

}
