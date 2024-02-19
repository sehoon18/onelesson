package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.AdminBoardDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminBoardService;
import com.itwillbs.service.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminBoardController {
	@Inject
	private AdminBoardService adminBoardService;
	
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
	
	@GetMapping("/noticeList")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("AdminBoardController noticeList()");
		
//		int pageSize = 10;
//		String pageNum = request.getParameter("pageNum");
//		
//		if(pageNum == null) {
//			pageNum = "1";
//		}
//		
//		int currentPage = Integer.parseInt(pageNum);
//		pageDTO.setPageSize(pageSize);
//		pageDTO.setPageNum(pageNum);
//		pageDTO.setCurrentPage(currentPage);
//		
//		List<BoardDTO> noticeList = adminBoardService.getNoticeList(pageDTO);
//		
//		int count = adminBoardService.getNoticeCount();
//		int pageBlock = 10;
//		int startPage = (currentPage - 1)/pageBlock * pageBlock + 1;
//		int endPage = startPage + pageBlock - 1;
//		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
//		
//		if(endPage > pageCount) {
//			endPage = pageCount;
//		}
//		
//		pageDTO.setCount(count);
//		pageDTO.setPageBlock(pageBlock);
//		pageDTO.setStartPage(startPage);
//		pageDTO.setEndPage(endPage);
//		pageDTO.setPageCount(pageCount);
//		
//		model.addAttribute("pageDTO", pageDTO);
//		model.addAttribute("noticeList", noticeList);
		
		return "admin/noticeList";
	}
	
	@GetMapping("/noticeInsert")
	public String noticeInsert() {
		System.out.println("AdminBoardController noticeInsert()");
		
		return "admin/noticeInsert";
	}

	@PostMapping("/noticeInsertPro")
	public String noticeInsertPro(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController noticeInsertPro()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.noticeInsert(adminBoardDTO);
		
		return "redirect:/admin/noticeList";
	}
	
	@GetMapping("/noticeContent")
	public String noticeContent(AdminBoardDTO adminBoardDTO, Model model) {
		System.out.println("AdminBoardController noticeContent()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.updateNoticeReadcount(adminBoardDTO);
		
		adminBoardDTO = adminBoardService.getNotice(adminBoardDTO);
		
		model.addAttribute("adminBoardDTO", adminBoardDTO);
		
		return "admin/noticeContent";
	}
	
	@GetMapping("/noticeUpdate")
	public String noticeUpdate(AdminBoardDTO adminBoardDTO, Model model) {
		System.out.println("AdminBoardController noticeUpdate()");
		System.out.println(adminBoardDTO);
		
		adminBoardDTO = adminBoardService.getNotice(adminBoardDTO);
		
		model.addAttribute("boardDTO", adminBoardDTO);
		
		return "admin/noticeUpdate";
	}
	
	@PostMapping("/noticeUpdatePro")
	public String noticeUpdatePro(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController noticeUpdatePro()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.noticeUpdate(adminBoardDTO);
		
		return "redirect:/admin/noticeList";
	}
	
	@GetMapping("/noticeDelete")
	public String noticeDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController noticeDelete()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.noticeDelete(adminBoardDTO);
		
		return "redirect:/admin/noticeList";
	}
	
	@GetMapping("/faqList")
	public String faqList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("AdminBoardController faqList()");
		
//		int pageSize = 10;
//		String pageNum = request.getParameter("pageNum");
//		
//		if(pageNum == null) {
//			pageNum = "1";
//		}
//		
//		int currentPage = Integer.parseInt(pageNum);
//		pageDTO.setPageSize(pageSize);
//		pageDTO.setPageNum(pageNum);
//		pageDTO.setCurrentPage(currentPage);
//		
//		List<BoardDTO> faqList = adminBoardService.getFaqList(pageDTO);
//		
//		int count = adminBoardService.getFaqCount();
//		int pageBlock = 10;
//		int startPage = (currentPage - 1)/pageBlock * pageBlock + 1;
//		int endPage = startPage + pageBlock - 1;
//		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
//		
//		if(endPage > pageCount) {
//			endPage = pageCount;
//		}
//		
//		pageDTO.setCount(count);
//		pageDTO.setPageBlock(pageBlock);
//		pageDTO.setStartPage(startPage);
//		pageDTO.setEndPage(endPage);
//		pageDTO.setPageCount(pageCount);
//		
//		model.addAttribute("pageDTO", pageDTO);
//		model.addAttribute("faqList", faqList);
		
		return "admin/faqList";
	}
	
	@GetMapping("/faqInsert")
	public String faqInsert() {
		System.out.println("AdminBoardController faqInsert()");
		
		return "admin/faqInsert";
	}
	
	@PostMapping("/faqInsertPro")
	public String faqInsertPro(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController faqInsertPro()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.faqInsert(adminBoardDTO);
		
		return "redirect:/admin/faqList";
	}
	
	@GetMapping("/faqContent")
	public String faqContent(AdminBoardDTO adminBoardDTO, Model model) {
		System.out.println("AdminBoardController faqContent()");
		System.out.println(adminBoardDTO);
		
		adminBoardDTO = adminBoardService.getFaq(adminBoardDTO);
		
		model.addAttribute("adminBoardDTO", adminBoardDTO);
		
		return "admin/faqContent";
	}
	
	@GetMapping("/faqUpdate")
	public String faqUpdate(AdminBoardDTO adminBoardDTO, Model model) {
		System.out.println("AdminBoardController faqUpdate()");
		System.out.println(adminBoardDTO);
		
		adminBoardDTO = adminBoardService.getFaq(adminBoardDTO);
		
		model.addAttribute("boardDTO", adminBoardDTO);
		
		return "admin/faqUpdate";
	}
	
	@PostMapping("/faqUpdatePro")
	public String faqUpdatePro(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController faqUpdatePro()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.faqUpdate(adminBoardDTO);
		
		return "redirect:/admin/faqList";
	}
	
	@GetMapping("/faqDelete")
	public String faqDelete(AdminBoardDTO adminBoardDTO) {
		System.out.println("AdminBoardController faqDelete()");
		System.out.println(adminBoardDTO);
		
		adminBoardService.faqDelete(adminBoardDTO);
		
		return "redirect:/admin/faqList";
	}
	
	
}
