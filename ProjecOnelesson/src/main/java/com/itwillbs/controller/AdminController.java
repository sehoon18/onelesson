package com.itwillbs.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.AdminQnaDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminNoticeService;
import com.itwillbs.service.AdminQnaService;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	@Inject
	private AdminService adminService;
	@Inject
	private MemberService memberService;
	@Inject
	private AdminNoticeService adminNoticeService;
	@Inject
	private AdminQnaService adminQnaService;
	
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
	public String adminMain(Model model , HttpServletRequest request , HttpSession session) {
		System.out.println("AdminController adminMain()");
		String user_id = (String) session.getAttribute("id");
	    
	    System.out.println(user_id);
	   if(user_id == null || !user_id.equals("admin")) {
		   return "admin/adminLogin";
	   }
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		
		List<AdminNoticeDTO> noticeList = adminNoticeService.getNoticeList(pageDTO);
		model.addAttribute("noticeList", noticeList);
		List<AdminQnaDTO> qnaList = adminQnaService.getQnaList(pageDTO);
		model.addAttribute("qnaList",qnaList);
		return "admin/adminMain";
	}
	
	@GetMapping("/adminLogout")
	public String adminLogout(HttpSession session , HttpServletResponse response) {
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
	@RequestMapping(value="/changeStatus", method={RequestMethod.GET, RequestMethod.POST})
	public String changeStatus(RedirectAttributes redirectAttributes,MemberDTO memberDTO) {
		System.out.println("AdminController changeStatus()");
		System.out.println(memberDTO);
		memberService.changeStatus(memberDTO);
		redirectAttributes.addFlashAttribute("message", "회원 상태가 변경되었습니다.");
//		model.addAttribute("id",id);
		return "redirect:/admin/memberAdmin";
		
	
}
}