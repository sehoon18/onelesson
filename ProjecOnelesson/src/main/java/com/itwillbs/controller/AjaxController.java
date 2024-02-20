package com.itwillbs.controller;
import javax.inject.Inject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {
	
	@Inject
	private AdminService adminService;
	
	@Inject
	private MemberService memberService;
	
	@GetMapping("/admin/idCheck")
	@ResponseBody
	public String idCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController idCheck()");
		System.out.println(adminDTO);
		
		AdminDTO adminDTO2 = adminService.getAdmin(adminDTO.getId());
		
		System.out.println(adminDTO2);
		
		String result = "";
		if(adminDTO2 != null) {
			result = "iddup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	
	@GetMapping("/admin/phoneCheck")
	@ResponseBody
	public String phoneCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController phoneCheck()");
		System.out.println(adminDTO);

		AdminDTO adminDTO2 = adminService.getAdminByPhone(adminDTO.getPhone());

		System.out.println(adminDTO2);

		String result = "";
		if (adminDTO2 != null) {
			result = "phonedup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
	
	
	@GetMapping("/admin/emailCheck")
	@ResponseBody
	public String emailCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController emailCheck()");
		System.out.println(adminDTO);

		AdminDTO adminDTO2 = adminService.getAdminByEmail(adminDTO.getEmail());

		System.out.println(adminDTO2);

		String result = "";
		if (adminDTO2 != null) {
			result = "emaildup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}

	
	
	//------------------------ [member] ----------------------------
	
	
	
	@GetMapping("/member/checkId")
	@ResponseBody
	public String checkId(MemberDTO memberDTO) {
		System.out.println("AjaxController checkId()");
		System.out.println(memberDTO);
		
		MemberDTO memberDTO2 = memberService.getMember(memberDTO.getId());
		
		System.out.println(memberDTO2);
		
		String result = "";
		if(memberDTO2 != null) {
			result = "iddup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	
	@GetMapping("/member/checkNick")
	@ResponseBody
	public String checkNick(MemberDTO memberDTO) {
		System.out.println("AjaxController checkNick()");
		System.out.println(memberDTO);
		
		MemberDTO memberDTO2 = memberService.getMemberByNick(memberDTO.getNick());
		
		System.out.println(memberDTO2);
		
		String result = "";
		if(memberDTO2 != null) {
			result = "nickdup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	
	@GetMapping("/member/checkPhone")
	@ResponseBody
	public String checkPhone(MemberDTO memberDTO) {
		System.out.println("AjaxController checkPhone()");
		System.out.println(memberDTO);

		MemberDTO memberDTO2 = memberService.getMemberByPhone(memberDTO.getPhone());

		System.out.println(memberDTO2);

		String result = "";
		if (memberDTO2 != null) {
			result = "phonedup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
	
	
	@GetMapping("/member/checkEmail")
	@ResponseBody
	public String checkEmail(MemberDTO memberDTO) {
		System.out.println("AjaxController checkEmail()");
		System.out.println(memberDTO);

		MemberDTO memberDTO2 = memberService.getMemberByEmail(memberDTO.getEmail());

		System.out.println(memberDTO2);

		String result = "";
		if (memberDTO2 != null) {
			result = "emaildup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
}
