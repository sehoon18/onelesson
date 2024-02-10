package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.LessonDTO;
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
	
	@GetMapping("/main")
	public String main() {
		System.out.println("LessonController main()");
		return "lesson/main";
	}
	
	@GetMapping("/lessonList")
	public String lessonList() {
		System.out.println("LessonController lessonList()");
		return "lesson/lessonList";
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
	
}
