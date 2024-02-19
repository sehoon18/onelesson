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

import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.LessonService;
import com.itwillbs.service.MemberService;


@Controller
@RequestMapping("/lesson/*")
public class LessonController {
	@Inject
	private LessonService lessonService;
	@Inject
	private MemberService memberService;
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@GetMapping("/test1")
	public String test1() {
		System.out.println("LessonController test1()");
		return "lesson/test1";
	}
	
	@GetMapping("/lessonList")
	public String lessonList(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController lessonList()");
		
		int pageSize = 9;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<LessonDTO> lessonList = lessonService.getLessonList(pageDTO);
		
		int count =  lessonService.getLessonCount();
		int pageBlock = 10;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock -1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		pageDTO.setCount(pageCount);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("lessonList", lessonList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "lesson/lessonList";
	}
	
	@GetMapping("/lessonInsert")
	public String lessonInsert(MemberDTO memberDTO, HttpSession session) {
		System.out.println("LessonController lessonInsert()");
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
		if(memberDTO != null) {
			if(memberDTO.getType() == 1) {
				return "lesson/lessonInsert";
			} else {
				return "redirect:/member/main";
			}
		} else {
			return "redirect:/member/main";
		}
	}
	
	@PostMapping("/lessonInsertPro")
	public String lessonInsertPro(MultipartFile preview, HttpServletRequest request, Model model, MemberDTO memberDTO) throws Exception{
		System.out.println("LessonController lessonInsertPro()");
		
		boolean userCheck = false;
		if(memberService.userCheck(memberDTO) != null) {
			userCheck = true;
		} else {
			userCheck = false;
		}
		
		UUID uuid = UUID.randomUUID();
		String filename = uuid.toString() + "_" + preview.getOriginalFilename();
		System.out.println(filename);
		System.out.println(uploadPath);
		FileCopyUtils.copy(preview.getBytes(), new File(uploadPath, filename));
		
		LessonDTO lessonDTO = new LessonDTO();
		lessonDTO.setCategory(request.getParameter("category"));
		lessonDTO.setSubCategory(request.getParameter("subCategory"));
		lessonDTO.setSubject(request.getParameter("subject"));
		lessonDTO.setContent(request.getParameter("content"));
		lessonDTO.setLocation(request.getParameter("location"));
		lessonDTO.setDate(request.getParameter("date"));
		lessonDTO.setPrice(Integer.parseInt(request.getParameter("price")));
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonDTO.setPreview(filename);
		lessonDTO.setId(request.getParameter("id"));
		
		if(userCheck == false) {
	        model.addAttribute("errorMessage", "비밀번호가 틀렸습니다.");
	        model.addAttribute("lessonDTO", lessonDTO); 
	        return "lesson/lessonInsert";
		}
		
		lessonService.insertLesson(lessonDTO);
		
		return "redirect:/lesson/lessonList";
	}
	
	@GetMapping("/lessonInfo")
	public String lessonInfo(LessonDTO lessonDTO, Model model) {
		System.out.println("LessonController lessonInfo()");
		
		lessonDTO = lessonService.getLesson(lessonDTO);
		
		model.addAttribute("lessonDTO", lessonDTO);
		
		return "lesson/lessonInfo";
	}
	
	@GetMapping("/payment")
	public String payment(LessonDTO lessonDTO, Model model, MemberDTO memberDTO, HttpSession session) {
		System.out.println("LessonController payment()");
		
		if(session.getAttribute("id") != null) {
			lessonDTO = lessonService.getLesson(lessonDTO);
			model.addAttribute("lessonDTO", lessonDTO);
			
			memberDTO = memberService.getMember((String)session.getAttribute("id"));
			model.addAttribute("memberDTO", memberDTO);
			
			System.out.println(memberDTO);
			System.out.println(lessonDTO);
			return "lesson/payment";
		} else {
			return "redirect:/member/memberLogin";
		}
	}
	
	@PostMapping("/paymentPro")
	public String paymentPro(LessonDTO lessonDTO, HttpServletRequest request, HttpSession session){
		System.out.println("LessonController lessonInsertPro()");
		
		lessonDTO.setId((String)session.getAttribute("id"));
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonService.insertOrders(lessonDTO);
		
		return "redirect:lesson/paymentInfo";
	}
	
	@GetMapping("/lessonSearch")
	public String lessonSearch(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController lessonSearch()");
		
		int pageSize = 9;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<LessonDTO> lessonList = lessonService.getlessonSearch(pageDTO);

		int count =  lessonService.getLessonCount();
		int pageBlock = 10;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock -1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("lessonList", lessonList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "lesson/lessonSearch";
	}
	
	@GetMapping("/categorySearch")
	public String categorySearch(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController categorySearch()");
		
		int pageSize = 9;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<LessonDTO> lessonList = lessonService.getcategorySearch(pageDTO);

		int count =  lessonService.getLessonCount();
		int pageBlock = 10;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock -1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("lessonList", lessonList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "lesson/categorySearch";
	}
	
}
