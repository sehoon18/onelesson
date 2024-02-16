package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.service.AdminBoardService;
import com.itwillbs.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminBoardController {
	@Inject
	private AdminBoardService adminBoardService;
	
	@GetMapping("/adminMain")
	public String adminMain() {
		System.out.println("AdminBoardController adminMain()");
		
		return "admin/adminMain";
	}
	
	@GetMapping("/memberAdmin")
	public String memberAdmin() {
		System.out.println("AdminBoardController memberAdmin()");
		
		return "admin/memberAdmin";
	}
	
	@GetMapping("/lessonAdmin")
	public String lessonAdmin() {
		System.out.println("AdminBoardController lessonAdmin()");
		
		return "admin/lessonAdmin";
	}
	
	@GetMapping("/paymentAdmin")
	public String paymentAdmin() {
		System.out.println("AdminBoardController paymentAdmin()");
		
		return "admin/paymentAdmin";
	}
}
