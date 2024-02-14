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
	
	@GetMapping("/memberAdmin")
	public String memberAdmin() {
		System.out.println("AdminController memberAdmin()");
		
		return "admin/memberAdmin";
	}
	
	@GetMapping("/lessonAdmin")
	public String lessonAdmin() {
		System.out.println("AdminController lessonAdmin()");
		
		return "admin/lessonAdmin";
	}
	
	@GetMapping("/paymentAdmin")
	public String paymentAdmin() {
		System.out.println("AdminController paymentAdmin()");
		
		return "admin/paymentAdmin";
	}
}
