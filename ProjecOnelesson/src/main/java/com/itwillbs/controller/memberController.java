package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class memberController {
	@Inject
	private MemberService memberService;
	
	@GetMapping("/mypage")
	public String mypage(MemberDTO memberDTO) {
		System.out.println("MemberController mypage()");
		
		return "member/mypage";
	}//mypage()
	
	@GetMapping("/myLessonList")
	public String myLessionList(MemberDTO memberDTO) {
		System.out.println("MemberController myLessionList()");
		
		return "member/myLessonList";
	}//myLessionList();
	
	@GetMapping("/myInfo")
	public String myInfo(MemberDTO memberDTO) {
		System.out.println("MemberController myInfo()");
		
		return "member/myInfo";
	}//myInfo();
}
