package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class memberController {
	@Inject
	private MemberService memberService;
	
	@GetMapping("/memberLogin")
	public String memberLogin() {
		System.out.println("MemberController memberLogin()");
		return "member/memberLogin";
	
	}
	
	
	@GetMapping("/memberSelectPage")
	public String memberSelectPage() {
		System.out.println("MemberController memberSelectPage()");
		return "member/memberSelectPage";
	}
	
	@GetMapping("/memberAgreement")
	public String memberAgreement() {
		System.out.println("MemberController memberAgreement()");
		return "member/memberAgreement";
	}
	
	@GetMapping("/memberAgreement2")
	public String memberAgreement2() {
		System.out.println("MemberController memberAgreement2()");
		return "member/memberAgreement2";
	}
	
	@GetMapping("/memberInsert1")
	public String memberInsert1() {
		System.out.println("MemberController memberInsert1()");
		return "member/memberInsert1";
	}
	
	@GetMapping("/memberInsert2")
	public String memberInsert2() {
		System.out.println("MemberController memberInsert2()");
		return "member/memberInsert2";
	}
	
	@GetMapping("/memberFindId")
	public String memberFindId() {
		System.out.println("MemberController memberFindId()");
		return "member/memberFindId";
	}
	
	
	@GetMapping("/memberFindPass")
	public String memberFindPass() {
		System.out.println("MemberController memberFindPass()");
		return "member/memberFindPass";
	}
	
	

	
	

//	메인페이지
	@GetMapping("/main")
	public String main() {
		System.out.println("MemberController main()");
		return "member/main";
	}


}
