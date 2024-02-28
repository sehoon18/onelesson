package com.itwillbs.controller;

import java.io.File;
import java.sql.Timestamp;
import java.time.LocalDate;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.LessonService;
import com.itwillbs.service.MemberService;


@Controller
@RequestMapping("/lesson/*")
public class LessonController {
	@Inject
	private LessonService lessonService;
	@Inject
	private MemberService memberService;
	@Inject
	private BoardService boardService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@GetMapping("/test1")
	public String test1() {
		System.out.println("LessonController test1()");
		return "lesson/test1";
	}
	
	@GetMapping("/lessonList")
	public String lessonList(HttpSession session, HttpServletRequest request, PageDTO pageDTO, Model model, BoardDTO boardDTO, MemberDTO memberDTO) {
		System.out.println("LessonController lessonList()");
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
		model.addAttribute("memberDTO", memberDTO);
		
		String search = request.getParameter("search");
		String category = request.getParameter("category");

		int pageSize = 9;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setSearch(search);
		pageDTO.setCategory(category);
		
		List<LessonDTO> lessonList = lessonService.getLessonList(pageDTO);
		
		int count =  lessonService.getLessonCount(pageDTO);
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
		
		List<Integer> wishList = boardService.getwishList((String)session.getAttribute("id"));
		
		model.addAttribute("wishList", wishList);
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
	
	@GetMapping("/lessonUpdate")
	public String lessonUpdate(MemberDTO memberDTO, HttpSession session, LessonDTO lessonDTO, Model model) {
		System.out.println("LessonController lessonInsert()");
        
		lessonDTO = lessonService.getLesson(lessonDTO);
		model.addAttribute("lessonDTO", lessonDTO); 
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
		if(memberDTO != null) {
			if(memberDTO.getType() == 1) {
				return "lesson/lessonUpdate";
			} else {
				return "redirect:/member/main";
			}
		} else {
			return "redirect:/member/main";
		}
	}
	
	@PostMapping("/lessonInsertPro")
	public String lessonInsertPro(MultipartFile preview, MultipartFile detail, HttpServletRequest request, Model model, MemberDTO memberDTO) throws Exception{
		System.out.println("LessonController lessonInsertPro()");
		
		boolean userCheck = false;
		if(memberService.userCheck(memberDTO) != null) {
			userCheck = true;
		} else {
			userCheck = false;
		}
		
		UUID uuid = UUID.randomUUID();
		String filename1 = uuid.toString() + "_" + preview.getOriginalFilename();
		String filename2 = uuid.toString() + "_" + detail.getOriginalFilename();
		System.out.println(filename1);
		System.out.println(uploadPath);
		FileCopyUtils.copy(preview.getBytes(), new File(uploadPath, filename1));
		FileCopyUtils.copy(detail.getBytes(), new File(uploadPath, filename2));
		
		LessonDTO lessonDTO = new LessonDTO();
		lessonDTO.setCategory(request.getParameter("category"));
		lessonDTO.setSubCategory(request.getParameter("subCategory"));
		lessonDTO.setSubject(request.getParameter("subject"));
		lessonDTO.setContent(request.getParameter("content"));
		lessonDTO.setLocation(request.getParameter("location"));
		lessonDTO.setDate(request.getParameter("date"));
		lessonDTO.setPrice(Integer.parseInt(request.getParameter("price")));
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonDTO.setPreview(filename1);
		lessonDTO.setDetail(filename2);
		lessonDTO.setId(request.getParameter("id"));
		
		if(userCheck == false) {
	        model.addAttribute("errorMessage", "비밀번호가 틀렸습니다.");
	        model.addAttribute("lessonDTO", lessonDTO); 
	        return "lesson/lessonInsert";
		}
		
		lessonService.insertLesson(lessonDTO);
		
		return "redirect:/member/mypage";
	}
	
	@PostMapping("/lessonUpdatePro")
	public String lessonUpdatePro(MultipartFile preview, MultipartFile detail, HttpServletRequest request, Model model, MemberDTO memberDTO) throws Exception{
		System.out.println("LessonController lessonUpdatePro()");
        
		boolean userCheck = false;
		if(memberService.userCheck(memberDTO) != null) {
			userCheck = true;
		} else {
			userCheck = false;
		}
		
		UUID uuid = UUID.randomUUID();
		String filename1 = uuid.toString() + "_" + preview.getOriginalFilename();
		String filename2 = uuid.toString() + "_" + detail.getOriginalFilename();
		System.out.println(filename1);
		System.out.println(uploadPath);
		FileCopyUtils.copy(preview.getBytes(), new File(uploadPath, filename1));
		FileCopyUtils.copy(detail.getBytes(), new File(uploadPath, filename2));
		
		LessonDTO lessonDTO = new LessonDTO();
		lessonDTO.setNum(Integer.parseInt(request.getParameter("num")));
		lessonDTO.setCategory(request.getParameter("category"));
		lessonDTO.setSubCategory(request.getParameter("subCategory"));
		lessonDTO.setSubject(request.getParameter("subject"));
		lessonDTO.setContent(request.getParameter("content"));
		lessonDTO.setLocation(request.getParameter("location"));
		lessonDTO.setDate(request.getParameter("date"));
		lessonDTO.setPrice(Integer.parseInt(request.getParameter("price")));
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonDTO.setPreview(filename1);
		lessonDTO.setDetail(filename2);
		lessonDTO.setId(request.getParameter("id"));
		System.out.println(lessonDTO);
		if(userCheck == false) {
	        model.addAttribute("errorMessage", "비밀번호가 틀렸습니다.");
	        model.addAttribute("lessonDTO", lessonDTO); 
	        return "lesson/lessonUpdate";
		} else if(userCheck == true) {
			lessonService.updateLesson(lessonDTO);
			return "redirect:/member/mypage";
		} else {
	        return "lesson/lessonUpdate";
		}
		
	}	
	
	@GetMapping("/lessonInfo")
	public String lessonInfo(HttpSession session, LessonDTO lessonDTO, Model model, BoardDTO boardDTO, HttpServletRequest request, PageDTO pageDTO) {
		System.out.println("LessonController lessonInfo()");
		
		lessonDTO = lessonService.getLesson(lessonDTO);

		int pageSize = 3;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setType(lessonDTO.getNum());
		
		List<BoardDTO> boardList = boardService.getLessonReview(pageDTO);
		
		int count =  boardService.getLessonReviewCount(lessonDTO);
		int pageBlock = 5;
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
		
		List<Integer> wishList = boardService.getwishList((String)session.getAttribute("id"));
		
		model.addAttribute("wishList", wishList);
		model.addAttribute("boardList", boardList);
		model.addAttribute("lessonDTO", lessonDTO);
		model.addAttribute("pageDTO", pageDTO);
		return "lesson/lessonInfo";
	}
	
	@GetMapping("/payment")
	public String payment(LessonDTO lessonDTO, Model model, MemberDTO memberDTO, HttpSession session, RedirectAttributes redirectAttributes) {
		System.out.println("LessonController payment()");
		
		
		
		String id = (String)session.getAttribute("id");
		if(id != null) {
			if(id.equals("admin")) {
				redirectAttributes.addFlashAttribute("message", "괸리자계정은 사용할 수 없는 기능입니다.");
				return "redirect:/lesson/lessonInfo?num=" + lessonDTO.getNum();
			}
			memberDTO = memberService.getMember(id);
			if(memberDTO.getType() == 1) {
				 redirectAttributes.addFlashAttribute("message", "강사회원은 사용할 수 없는 기능입니다.");
					return "redirect:/lesson/lessonInfo?num=" + lessonDTO.getNum();
			}
			lessonDTO = lessonService.getLesson(lessonDTO);
			
			LocalDate today = LocalDate.now();
			String date =  lessonService.infoCheck(lessonDTO);
			LocalDate lessonDate = LocalDate.parse(date);
			
			if(lessonDate.isAfter(today)) {
				// 레슨 날짜 남음
				model.addAttribute("lessonDTO", lessonDTO);
				model.addAttribute("memberDTO", memberDTO);
				return "lesson/payment";
			} else {
				// 레슨 날짜 지남
				redirectAttributes.addFlashAttribute("message", "이미 종료된 레슨입니다.");
				return "redirect:/lesson/lessonInfo?num=" + lessonDTO.getNum();
			}
			
		} else {
			redirectAttributes.addFlashAttribute("message", "로그인이 필요합니다.");
			return "redirect:/member/memberLogin";
		}
	}
	
	@PostMapping("/paymentPro")
	@ResponseBody
	public String paymentPro(@ModelAttribute LessonDTO lessonDTO, HttpSession session){
		System.out.println("LessonController paymentPro()");
		
		lessonDTO.setId((String)session.getAttribute("id"));
		lessonDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		lessonService.insertOrders(lessonDTO);
		
		return null;
	}
	
	@GetMapping("/activeSwitch")
	public String activeSwitch(LessonDTO lessonDTO) {
		System.out.println("LessonController activeSwitch()");
		
		lessonDTO = lessonService.getLesson(lessonDTO);
		
		if(lessonDTO.getStatus() == 0) {
			lessonService.updateStatus0(lessonDTO);
			return "redirect:/member/mypage";
		} else if(lessonDTO.getStatus() ==1) {
			lessonService.updateStatus1(lessonDTO);
			return "redirect:/member/mypage";
		} else {
			return "redirect:/member/mypage";
		}
	}
}
