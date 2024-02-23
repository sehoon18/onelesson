package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.AdminFaqDTO;
import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminFaqService;
import com.itwillbs.service.AdminNoticeService;
import com.itwillbs.service.AdminQnaService;
import com.itwillbs.service.LessonService;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/admin/*")
public class AdminBoardController {
	@Inject
	private AdminNoticeService adminNoticeService;
	@Inject
	private AdminFaqService adminFaqService;
	@Inject
	private AdminQnaService adminQnaService;
	@Inject
	private LessonService lessonService;
	@Inject
	private MemberService memberService;
	
	@Autowired
	public AdminBoardController(LessonService lessonService , MemberService memberService) {
		this.lessonService=lessonService;
		this.memberService=memberService;
	}
	
	
	@GetMapping("/memberAdmin")
	public String memberAdmin( Model model , HttpServletRequest request) {
		System.out.println("AdminBoardController memberAdmin()");
		
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
		
		MemberDTO memberDTO = new MemberDTO();
		List<MemberDTO> memberList = memberService.getMemberList(memberDTO);
		model.addAttribute("memberList", memberList);
		return "admin/memberAdmin";
	}
	
	@GetMapping("/lessonAdmin")
	public String lessonAdmin(HttpServletRequest request,  Model model) {
	    System.out.println("AdminBoardController lessonAdmin()" );
	    
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
	    List<LessonDTO> lessonList = lessonService.getLessonList(pageDTO);
	    model.addAttribute("lessonList", lessonList);
	    return "admin/lessonAdmin";
	}
	
	@GetMapping("/paymentAdmin")
	public String paymentAdmin() {
		System.out.println("AdminBoardController paymentAdmin()");
		
		return "admin/paymentAdmin";
	}
	
	@GetMapping("/notice")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("AdminBoardController notice()");
		
		String search = request.getParameter("search");
		
		int pageSize = 5;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setSearch(search);
		
		System.out.println(pageDTO);
		
		List<AdminNoticeDTO> noticeList = adminNoticeService.getNoticeList(pageDTO);
		
		int count = adminNoticeService.getNoticeCount();
		int pageBlock = 5;
		int startPage = (currentPage - 1)/pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("noticeList", noticeList);
		
		return "admin/noticeList";
	}
	
	@GetMapping("/noticeInsert")
	public String noticeInsert() {
		System.out.println("AdminBoardController noticeInsert()");
		
		return "admin/noticeInsert";
	}

	@PostMapping("/noticeInsertPro")
	public String noticeInsertPro(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminBoardController noticeInsertPro()");
		System.out.println(adminNoticeDTO);
		
		adminNoticeService.noticeInsert(adminNoticeDTO);
		
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/noticeContent")
	public String noticeContent(AdminNoticeDTO adminNoticeDTO, Model model) {
		System.out.println("AdminBoardController noticeContent()");
		System.out.println(adminNoticeDTO);
		
		adminNoticeService.updateNoticeReadcount(adminNoticeDTO);
		
		adminNoticeDTO = adminNoticeService.getNotice(adminNoticeDTO);
		
		model.addAttribute("adminNoticeDTO", adminNoticeDTO);
		
		return "admin/noticeContent";
	}
	
	@GetMapping("/noticeUpdate")
	public String noticeUpdate(AdminNoticeDTO adminNoticeDTO, Model model) {
		System.out.println("AdminBoardController noticeUpdate()");
		System.out.println(adminNoticeDTO);
		
		adminNoticeDTO = adminNoticeService.getNotice(adminNoticeDTO);
		
		model.addAttribute("adminNoticeDTO", adminNoticeDTO);
		
		return "admin/noticeUpdate";
	}
	
	@PostMapping("/noticeUpdatePro")
	public String noticeUpdatePro(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminBoardController noticeUpdatePro()");
		System.out.println(adminNoticeDTO);
		
		adminNoticeService.noticeUpdate(adminNoticeDTO);
		
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/noticeDelete")
	public String noticeDelete(AdminNoticeDTO adminNoticeDTO) {
		System.out.println("AdminBoardController noticeDelete()");
		System.out.println(adminNoticeDTO);
		
		adminNoticeService.noticeDelete(adminNoticeDTO);
		
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/faq")
	public String faqList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("AdminBoardController faq()");
		
		String search = request.getParameter("search");
		
		int pageSize = 5;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setSearch(search);
		
		List<AdminFaqDTO> faqList = adminFaqService.getFaqList(pageDTO);
		
		int count = adminFaqService.getFaqCount();
		int pageBlock = 5;
		int startPage = (currentPage - 1)/pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("faqList", faqList);
		
		return "admin/faqList";
	}
	
	@GetMapping("/faqInsert")
	public String faqInsert() {
		System.out.println("AdminBoardController faqInsert()");
		
		return "admin/faqInsert";
	}
	
	@PostMapping("/faqInsertPro")
	public String faqInsertPro(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminBoardController faqInsertPro()");
		System.out.println(adminFaqDTO);
		
		adminFaqService.faqInsert(adminFaqDTO);
		
		return "redirect:/admin/faq";
	}
	
	@GetMapping("/faqContent")
	public String faqContent(AdminFaqDTO adminFaqDTO, Model model) {
		System.out.println("AdminBoardController faqContent()");
		System.out.println(adminFaqDTO);
		
		adminFaqDTO = adminFaqService.getFaq(adminFaqDTO);
		
		model.addAttribute("adminFaqDTO", adminFaqDTO);
		
		return "admin/faqContent";
	}
	
	@GetMapping("/faqUpdate")
	public String faqUpdate(AdminFaqDTO adminFaqDTO, Model model) {
		System.out.println("AdminBoardController faqUpdate()");
		System.out.println(adminFaqDTO);
		
		adminFaqDTO = adminFaqService.getFaq(adminFaqDTO);
		
		model.addAttribute("adminFaqDTO", adminFaqDTO);
		
		return "admin/faqUpdate";
	}
	
	@PostMapping("/faqUpdatePro")
	public String faqUpdatePro(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminBoardController faqUpdatePro()");
		System.out.println(adminFaqDTO);
		
		adminFaqService.faqUpdate(adminFaqDTO);
		
		return "redirect:/admin/faq";
	}
	
	@GetMapping("/faqDelete")
	public String faqDelete(AdminFaqDTO adminFaqDTO) {
		System.out.println("AdminBoardController faqDelete()");
		System.out.println(adminFaqDTO);
		
		adminFaqService.faqDelete(adminFaqDTO);
		
		return "redirect:/admin/faqList";
	}
	
	@GetMapping("/qna")
	public String qnaList() {
		System.out.println("AdminBoardController qnaList()");
		
		return "admin/qnaList";
	}
	
}
