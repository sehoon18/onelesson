package com.itwillbs.controller;

import java.sql.Timestamp;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class memberController {
	@Inject
	private MemberService memberService;
	
//	메인페이지
	@GetMapping("/main")
	public String main() {
		System.out.println("MemberController main()");
		return "member/main";
	}
	
	//	강사,일반 회원가입 선택 페이지
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
	
	//	약관동의서 일반회원
	@GetMapping("/memberAgreement1")
	public String memberAgreement1() {
		System.out.println("MemberController memberAgreement1()");
		return "member/memberAgreement1";
	}
	
	//	약관동의서 강사회원
	@GetMapping("/memberAgreement2")
	public String memberAgreement2() {
		System.out.println("MemberController memberAgreement2()");
		return "member/memberAgreement2";
	}
	
	//	일반회원 회원가입
	@GetMapping("/memberInsert1")
	public String memberInsert1() {
		System.out.println("MemberController memberInsert1()");
		return "member/memberInsert1";
	}
	
	//	일반회원 회원가입	Pro
	@PostMapping("/memberInsertPro1")
	public String memberInsertPro1(MemberDTO memberDTO) {
		System.out.println("MemberController memberInsertPro1()");
		System.out.println(memberDTO);
		memberDTO.setJoin(new Timestamp(System.currentTimeMillis()));
		memberDTO.setType(0);
		memberDTO.setStatus(0);
		memberService.insertMember1(memberDTO);
		return "redirect:/member/memberLogin";	
	}
	
	//	강사회원 회원가입
	@GetMapping("/memberInsert2")
	public String memberInsert2() {
		System.out.println("MemberController memberInsert2()");
		return "member/memberInsert2";
	}
	
	//	강사회원 회원가입	Pro
	@PostMapping("/memberInsertPro2")
	public String memberInsertPro2(MemberDTO memberDTO) {
		System.out.println("MemberController memberInsertPro2()");
		System.out.println(memberDTO);
		memberDTO.setJoin(new Timestamp(System.currentTimeMillis()));
		memberDTO.setType(1);
		memberDTO.setStatus(0);
		memberService.insertMember2(memberDTO);
		return "redirect:/member/memberLogin";	
	}
	
	//로그인
	@GetMapping("/memberLogin")
	public String memberLogin() {
		System.out.println("MemberController memberLogin()");
		return "member/memberLogin";
	}
	
	//로그인 Pro
	@PostMapping("/memberLoginPro")
	public String memberLoginPro(MemberDTO memberDTO , HttpSession session) {
		System.out.println("MemberController memberLoginPro()");
		System.out.println(memberDTO);	
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 != null) {
		session.setAttribute("id", memberDTO2.getId());
		return "redirect:/member/main";
		}else {
		return "redirect:/member/memberLogin";
		}
	}
	
	@GetMapping("/memberUpdate")
	public String memberUpdate(HttpSession session, Model model) {
		System.out.println("MemberController memberUpdate()");
		String id =(String)session.getAttribute("id");
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO" , memberDTO);
		return "member/memberUpdate";
	}
	
	//	회원정보수정Pro
	@PostMapping("/memberUpdatePro")
	public String memberUpdatePro(MemberDTO memberDTO){
		System.out.println("MemberController memberUpdatePro()");
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 !=null) {
			memberService.updateMember(memberDTO);
			return "redirect:/member/main";
		}else {
			return "redirect:/member/memberUpdate";
		}
	}
	
	//	회원정보삭제
	@GetMapping("/memberDelete")
	public String memberDelete() {
		System.out.println("MemberController memberDelete()");
		return "member/memberDelete";
	}
	
	//	회원정보삭제Pro
	@PostMapping("/memberDeletePro")
	public String deletePro(MemberDTO memberDTO, HttpSession session) {
	System.out.println("MemberController memberDeletePro()");
	System.out.println(memberDTO); 
	MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
	if(memberDTO2 != null) {
		memberService.deleteMember(memberDTO);
		memberDTO.setStatus(1);
		session.invalidate();
		return "redirect:/member/main";	
		}else {
		return "redirect:/member/memberDelete";
		}
	}
	
	//	아이디찾기
	@GetMapping("/memberFindId")
	public String memberFindId() {
		System.out.println("MemberController memberFindId()");
		return "member/memberFindId";
	}	
	
	//	아이디찾기Pro
	@PostMapping("/memberFindIdPro")
	public String memberFindIdPro() {
		System.out.println("MemberController memberFindIdPro()");
		return "member/memberFindId";
	}
	
	// -----------------------[myPage]------------------------------
	
	@GetMapping("/adminInsert")
	public String adminInsert() {
		System.out.println("MemberController adminInsert()");
		return "member/adminInsert";
	}

	@GetMapping("/memberFindPass")
	public String memberFindPass() {
		System.out.println("MemberController memberFindPass()");
		return "member/memberFindPass";
	}
	
	@GetMapping("/myInfo")
	public String myInfo() {
		System.out.println("MemberController myInfo()");
		return "member/myInfo";
	}
	@GetMapping("/mypage")
	public String mypage(HttpSession session , Model model) {
		System.out.println("MemberController mypage()");
		String id = (String)session.getAttribute("id");
		
		MemberDTO memberDTO = memberService.getMember(id);
		
		model.addAttribute("memberDTO" , memberDTO);
		System.out.println(memberDTO);
		return "member/mypage";
	}

	@GetMapping("/myLessonList")
	public String myLessonList() {
		System.out.println("MemberController myLessonList");
		return "member/myLessonList";
	}
	@GetMapping("/myPayment")
	public String Payment() {
		System.out.println("");
		return "member/myPayment";
	}


}
