package com.itwillbs.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.AdminFaqDTO;
import com.itwillbs.domain.AdminNoticeDTO;
import com.itwillbs.domain.AdminQnaDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminFaqService;
import com.itwillbs.service.AdminNoticeService;
import com.itwillbs.service.AdminQnaService;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.BoardService;
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
	@Inject
	private BoardService boardService;
	@Inject
	private AdminService adminService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	@GetMapping("/memberAdmin")
	public String memberAdmin( Model model , HttpServletRequest request , HttpSession session) {
		System.out.println("AdminBoardController memberAdmin()");
		
		String user_id = (String) session.getAttribute("id");
	    System.out.println(user_id);
	    
	   if(user_id == null || !user_id.equals("admin")) {
		   return "admin/memberAdmin";
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
		
		MemberDTO memberDTO = new MemberDTO();
		
		String keyword = request.getParameter("keyword");
	    memberDTO.setKeyword(keyword);
	    
	    String field = request.getParameter("field");
	    memberDTO.setField(field);
	    
	    String type =request.getParameter("type");
	   
	    try {
	        memberDTO.setType(type != null ? Integer.parseInt(type) : 100 );
	    } catch (NumberFormatException e) {
	    	memberDTO.setType(100);
	    }
	    
	    	
	    System.out.println(memberDTO);
		List<MemberDTO> memberList;
		
		if((type != null && !type.equals("100") ||  keyword != null && !keyword.isEmpty() )) {
			memberList = memberService.searchMembers(memberDTO);
		}
		else {
	        memberList = memberService.getMemberList(memberDTO);
	    }
		model.addAttribute("memberList", memberList);
		
		return "admin/memberAdmin";
	}
	
	@GetMapping("/lessonAdmin")
	public String lessonAdmin(HttpServletRequest request,  Model model ,HttpSession session) {
	    System.out.println("AdminBoardController lessonAdmin()" );
	    String user_id = (String) session.getAttribute("id");
	    
	    System.out.println(user_id);
	   if(user_id == null || !user_id.equals("admin")) {
		   return "admin/lessonAdmin";
	   }
	    int pageSize = 20;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}	
		int currentPage = Integer.parseInt(pageNum);
//		
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		LessonDTO lessonDTO = new LessonDTO();
		
		String category = request.getParameter("category");
		lessonDTO.setCategory(category);
		String keyword = request.getParameter("keyword");
		lessonDTO.setKeyword(keyword);
		String field = request.getParameter("field");
		lessonDTO.setField(field);
		String status = request.getParameter("status");
		try {
			lessonDTO.setStatus(status != null ? Integer.parseInt(status) : 100);
		}catch(NumberFormatException e){
			lessonDTO.setStatus(100);
		}
		
		
		List<LessonDTO> lessonList;
		if ((category == null || category.equals("all")) && (status == null || status.equals("100")) && (keyword == null || keyword.isEmpty())){
			lessonList = lessonService.getLessonListAll(pageDTO);
		} else {
			lessonList = lessonService.searchLessons(lessonDTO);
		}
		
	    model.addAttribute("lessonList", lessonList);
	    return "admin/lessonAdmin";
	}
	
	@GetMapping("/paymentAdmin")
	public String paymentAdmin(HttpServletRequest request,HttpSession session) {
		System.out.println("AdminBoardController paymentAdmin()");
		String user_id = (String) session.getAttribute("id");
		
		System.out.println(user_id);
		if(user_id == null || !user_id.equals("admin")) {
			   return "admin/paymentAdmin";
		   }
		
		return "admin/paymentAdmin";
	}
	
	@GetMapping("/notice")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model, HttpSession session) {
		System.out.println("AdminBoardController notice()");
		String user_id = (String) session.getAttribute("id");
		
		System.out.println(user_id);
		if(user_id == null || !user_id.equals("admin")) {
			   return "admin/noticeList";
		   }
		
		String search = request.getParameter("search");
		
		int pageSize = 10;
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
	public String noticeInsertPro(HttpServletRequest request, MultipartFile image) throws Exception  {
		System.out.println("AdminBoardController noticeInsertPro()");
		
		AdminNoticeDTO adminNoticeDTO = new AdminNoticeDTO();
		
		if(image.isEmpty()) {
			
		} else {
			
			UUID uuid = UUID.randomUUID();
			String filename = uuid.toString() + "_" + image.getOriginalFilename();
			System.out.println(filename);
			
			System.out.println(uploadPath);
			FileCopyUtils.copy(image.getBytes(), new File(uploadPath, filename));
			
			adminNoticeDTO.setImage(filename);
		}
		
		adminNoticeDTO.setId(request.getParameter("id"));
		adminNoticeDTO.setType(Integer.parseInt(request.getParameter("type")));
		adminNoticeDTO.setSubject(request.getParameter("subject"));
		adminNoticeDTO.setContent(request.getParameter("content"));
		
		System.out.println(adminNoticeDTO);
		
		adminNoticeService.noticeInsert(adminNoticeDTO);
		
		return "redirect:/admin/notice";
	}
	
	@GetMapping("/noticeContent")
	public String noticeContent(AdminNoticeDTO adminNoticeDTO, Model model) {
		System.out.println("AdminBoardController noticeContent()");
		System.out.println(adminNoticeDTO);
		
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
	public String noticeUpdatePro(HttpServletRequest request, MultipartFile image) throws Exception {
		System.out.println("AdminBoardController noticeUpdatePro()");
		
		AdminNoticeDTO adminNoticeDTO = new AdminNoticeDTO();
		adminNoticeDTO.setNum(Integer.parseInt(request.getParameter("num")));
		adminNoticeDTO.setId(request.getParameter("id"));
		adminNoticeDTO.setType(Integer.parseInt(request.getParameter("type")));
		adminNoticeDTO.setSubject(request.getParameter("subject"));
		adminNoticeDTO.setContent(request.getParameter("content"));
		
		if(image.isEmpty()) {
			System.out.println("첨부파일 없음");
			if(request.getParameter("oldfile") == null) {
			
			}else {
				adminNoticeDTO.setImage(request.getParameter("oldfile"));
			}
		}else {
			System.out.println("첨부파일 있음");
			
			UUID uuid = UUID.randomUUID();
			String filename = uuid.toString() + "_" + image.getOriginalFilename();
			System.out.println(filename);
			
			System.out.println(uploadPath);
			FileCopyUtils.copy(image.getBytes(), new File(uploadPath, filename));
			
			adminNoticeDTO.setImage(filename);
		}
		
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
	public String faqList(HttpServletRequest request, PageDTO pageDTO, Model model, HttpSession session) {
		System.out.println("AdminBoardController faq()");
		String user_id = (String) session.getAttribute("id");
		
		System.out.println(user_id);
		if(user_id == null || !user_id.equals("admin")) {
			   return "admin/faqList";
		   }
		
		String search = request.getParameter("search");
		
		int pageSize = 10;
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
		
		return "redirect:/admin/faq";
	}
	
	@GetMapping("/qna")
	public String qna(HttpServletRequest request, PageDTO pageDTO, Model model, HttpSession session) {
		System.out.println("AdminBoardController qna()");
		String user_id = (String) session.getAttribute("id");
		
		System.out.println(user_id);
		if(user_id == null || !user_id.equals("admin")) {
			   return "admin/qnaList";
		   }
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<AdminQnaDTO> qnaList = adminQnaService.getQnaList(pageDTO);
		
		int count = adminQnaService.getQnaCount();
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
		model.addAttribute("qnaList", qnaList);
		
		return "admin/qnaList";
	}
	
	@GetMapping("/qnaContent")
	public String qnaContent(BoardDTO boardDTO, AdminQnaDTO adminQnaDTO, Model model) {
		System.out.println("AdminBoardController qnaContent()");
		System.out.println(adminQnaDTO);
		
		adminQnaDTO = adminQnaService.getQna(adminQnaDTO);
		boardDTO = boardService.getQna(boardDTO);
	    
	    model.addAttribute("adminQnaDTO", adminQnaDTO);
	    model.addAttribute("boardDTO", boardDTO);
		
		return "admin/qnaContent";
	}
	
	@GetMapping("/qnaAnswer")
	public String qnaAnswer(HttpSession session, AdminQnaDTO adminQnaDTO, Model model, BoardDTO boardDTO) {
		System.out.println("AdminBoardController qnaAnswer()");
		
		String admin_id = (String) session.getAttribute("id");
	    if(admin_id != null) {
	    	if(admin_id.equals("admin")) {
	    		boardDTO.setNum(adminQnaDTO.getNum());
	    		boardDTO = boardService.getQna(boardDTO);
	    		model.addAttribute("boardDTO", boardDTO);
	    		return "admin/qnaAnswer";
		    } else {
		    	return "redirect:/admin/adminLogin";
		    }
	    } else {
	    	return "redirect:/admin/adminLogin";
	    }
	}
	
	@PostMapping("/qnaAnswerPro")
	public String qnaAnswerPro(HttpSession session, AdminQnaDTO adminQnaDTO, Model model, AdminDTO adminDTO) {
		System.out.println("AdminBoardController qnaAnswerPro()");
		
		 adminQnaDTO.setId((String)session.getAttribute("id"));
		    System.out.println(adminQnaDTO);
		    adminDTO = adminService.adminCheck(adminQnaDTO);

		    if (adminDTO != null) {
		        adminQnaDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		        adminQnaService.updateQna(adminQnaDTO);
		        return "redirect:/admin/qnaContent?num=" + adminQnaDTO.getNum();
		    } else {
		        return "redirect:/admin/qnaContent?num=" + adminQnaDTO.getNum();
		    }
	}
	
	
	
}
