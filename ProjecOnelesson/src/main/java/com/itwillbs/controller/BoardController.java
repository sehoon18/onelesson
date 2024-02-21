package com.itwillbs.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.LessonService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	private BoardService boardService;
	@Inject
	private LessonService lessonService;
	@Inject
	private AdminService adminService;

	@GetMapping("/review")
	public String review() {
		System.out.println("BoardController review()");
		
		return "board/review";
	}
	
	@GetMapping("/reviewList")
	public String reviewList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("BoardController reviewList()");
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<BoardDTO> noticeList = boardService.getNoticeList(pageDTO);
		
		int count = boardService.getNoticeCount();
		int pageBlock = 10;
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
		
		return "board/reviewList";
	}
	
	@GetMapping("/noticeList")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("BoardController noticeList()");
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<BoardDTO> noticeList = boardService.getNoticeList(pageDTO);
		
		int count = boardService.getNoticeCount();
		int pageBlock = 10;
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
		
		return "board/noticeList";
	}
	
	@GetMapping("/noticeContent")
	public String noticeContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController noticeContent()");
		System.out.println(boardDTO);
		
		boardService.updateNoticeReadcount(boardDTO);
		
		boardDTO = boardService.getNotice(boardDTO);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/noticeContent";
	}
	
	@GetMapping("/faq")
	public String faqList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("BoardController faqList()");
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<BoardDTO> faqList = boardService.getFaqList(pageDTO);
		
		int count = boardService.getFaqCount();
		int pageBlock = 10;
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
		
		return "board/faqList";
	}
	
	@GetMapping("/faqContent")
	public String faqContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController faqContent()");
		System.out.println(boardDTO);
		
		boardDTO = boardService.getFaq(boardDTO);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/faqContent";
	}
	
	// 
	@GetMapping("/qnaList")
	public String lessonList(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO, HttpSession session) {
		System.out.println("LessonController qnaList()");
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId((String)session.getAttribute("id"));
		
		List<BoardDTO> boardList = boardService.getQnaList(pageDTO);
		
		int count =  boardService.getQnaCount();
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
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "board/qnaList";
	}

	@GetMapping("/lessonQna")
	public String lessonQna(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO) {
		System.out.println("LessonController lessonQna()");
		
//		int pageSize = 3;
//		String pageNum = request.getParameter("pageNum");
//		if(pageNum == null) {
//			pageNum="1";
//		}
//		
//		int currentPage = Integer.parseInt(pageNum);
//		
//		pageDTO.setPageSize(pageSize);
//		pageDTO.setPageNum(pageNum);
//		pageDTO.setCurrentPage(currentPage);
//		
//		List<LessonDTO> lessonList = boardService.getLessonList(pageDTO);
//		
//		int count =  boardService.getLessonCount();
//		int pageBlock = 10;
//		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
//		int endPage = startPage + pageBlock -1;
//		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
//		
//		if(endPage > pageCount) {
//			endPage = pageCount;
//		}
//		
//		pageDTO.setCount(pageCount);
//		pageDTO.setPageBlock(pageBlock);
//		pageDTO.setStartPage(startPage);
//		pageDTO.setEndPage(endPage);
//		pageDTO.setPageCount(pageCount);
//		
//		model.addAttribute("lessonList", lessonList);
//		model.addAttribute("pageDTO", pageDTO);
		
		return "board/lessonQna";
	}
	
	@GetMapping("/qnaWrite")
	public String qnaWrite() {
		System.out.println("BoardController qnaWrite()");
		
		return "board/qnaWrite";
	}
	
	@PostMapping("/qnaWritePro")
	public String qnaWritePro(HttpSession session, BoardDTO boardDTO) {
		System.out.println("BoardController qnaWritePro()");
		
		boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		boardService.insertQna(boardDTO);
		
		return "redirect:/board/qnaList";
	}

	@GetMapping("/qnaContent")
	public String qnaContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController qnaContent()");
		
		boardDTO = boardService.getQna(boardDTO);
		model.addAttribute("boardDTO", boardDTO);
		return "board/qnaContent";
	}

	@GetMapping("/qnaAnswer")
	public String qnaQuestion(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController qnaAnswer()");
		
		boardDTO = boardService.getQ(boardDTO);
		model.addAttribute("boardDTO", boardDTO);
		return "board/qnaAnswer";
	}
	
	@PostMapping("/qnaAnswerPro")
	public String qnaContentPro(HttpSession session, BoardDTO boardDTO, AdminDTO adminDTO) {
		System.out.println("BoardController qnaAnswerPro()");
		
		adminDTO.setId((String)session.getAttribute("id"));
		System.out.println(adminDTO);
		adminDTO = adminService.adminCheck(adminDTO);

		if(adminDTO != null) {
			boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
			boardService.updateQna(boardDTO);
			return "redirect:/board/qnaList";
		} else {
			return "redirect:/member/login";
		}
		
		
	}
	
	@GetMapping("/lessonQnaWrite")
	public String lessonQnaWrite(HttpSession session, Model model, BoardDTO boardDTO) {
		System.out.println("BoardController lessonQnaWrite()");
		
		boardDTO.setId((String)session.getAttribute("id"));
		
		List<LessonDTO> lessonList = lessonService.getSubject(boardDTO);
		
		model.addAttribute("lessonList", lessonList);
		
		return "board/lessonQnaWrite";
	}
	
	@PostMapping("/lessonQnaWritePro")
	public String lessonQnaWritePro(HttpSession session, BoardDTO boardDTO) {
		System.out.println("BoardController lessonQnaWritePro()");
		
		boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		boardService.insertLqna(boardDTO);
		
		return "redirect:/board/lessonQna";
	}
	
	@GetMapping("/lessonQnaContent")
	public String lessonQnaContent() {
		System.out.println("BoardController lessonQnaContent()");
		
		return "board/lessonQnaContent";
	}

	@GetMapping("/lessonQnaAnswer")
	public String lessonQnaQuestion() {
		System.out.println("BoardController lessonQnaAnswer()");
		
		return "board/lessonQnaAnswer";
	}
	
	@GetMapping("/wish")
	public String wish(HttpServletRequest request, Model model, PageDTO pageDTO, HttpSession session) {
		System.out.println("");
		
		
		
		int pageSize = 3;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId((String)session.getAttribute("id"));
		
		List<LessonDTO> lessonList = lessonService.getWishList(pageDTO);
		
		int count =  lessonService.getWishCount(pageDTO);
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
		
		return "board/wish";
	}
	
	@GetMapping("/wishToggle")
	@ResponseBody
	public String wishToggle(MemberDTO memberDTO) {
		System.out.println("BoardController wishToggle()");
		
		return "board/wishToggle";
	}
	
}
