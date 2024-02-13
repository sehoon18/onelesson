package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.LessonService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/lesson/*")
@Log4j
public class LessonController {
	@Inject
	private LessonService lessonService;
	
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
	
	@GetMapping("/lessonSearch")
	public String lessonSearch(PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController lessonSearch()");
		return "lesson/lessonSearch";
	}
	
	@GetMapping("/lessonInsert")
	public String lessonInsert() {
		System.out.println("LessonController lessonInsert()");
		return "lesson/lessonInsert";
	}
	
	@PostMapping("/lessonInsertPro")
	public String lessonInsertPro(LessonDTO lessonDTO, MultipartFile[] multipart) {
		System.out.println("LessonController lessonInsertPro()");
		System.out.println(lessonDTO);
		
		lessonService.insertLesson(lessonDTO);
		return "redirect:/lesson/lessonList";
	}
	
	@GetMapping("/lessonInfo")
	public String lessonInfo(LessonDTO lessonDTO) {
		System.out.println("LessonController lessonInfo()");
		
		return "lesson/lessonInfo";
	}
	
	@GetMapping("/payment")
	public String payment(LessonDTO lessonDTO) {
		System.out.println("LessonController payment()");
		
		return "lesson/payment";
	}
	
	@GetMapping("/Search")
	public String Search(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController Search()");
		
		int pageSize = 9;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<LessonDTO> lessonList = lessonService.getSearch(pageDTO);
		
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
		
		return "lesson/Search";
	}
	
}
