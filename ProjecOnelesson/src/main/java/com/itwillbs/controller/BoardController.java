package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	private BoardService boardService;

	@GetMapping("/review")
	public String review() {
		System.out.println("BoardController review()");
		return "board/review";
	}
	
	@GetMapping("/noticeList")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model) {
		System.out.println("BoardController noticeList()");
//		int pageSize = 10;
//		String pageNum = request.getParameter("pageNum");
//		if(pageNum == null) {
//			pageNum = "1";
//		}
//		int currentPage = Integer.parseInt(pageNum);
//		pageDTO.setPageSize(pageSize);
//		pageDTO.setPageNum(pageNum);
//		pageDTO.setCurrentPage(currentPage);
//		
//		List<BoardDTO> boardList = boardService.getBoardList(pageDTO);
//		
//		int count = boardService.getBoardCount();
//		int pageBlock = 10;
//		int startPage = (currentPage - 1)/pageBlock * pageBlock + 1;
//		int endPage = startPage + pageBlock - 1;
//		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
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
//		model.addAttribute("boardList", boardList);
		
		return "board/noticeList";
	}
	
	@GetMapping("/noticeInsert")
	public String noticeInsert() {
		System.out.println("BoardController noticeInsert()");
		
		return "board/noticeInsert";
	}

	@PostMapping("/noticeInsertPro")
	public String noticeInsertPro(BoardDTO boardDTO) {
		System.out.println("BoardController noticeInsertPro()");
//		System.out.println(boardDTO);
//		
//		boardService.insertBoard(boardDTO);
		
		return "redirect:/board/noticeList";
	}
	
	@GetMapping("/noticeContent")
	public String noticeContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController noticeContent()");
//		System.out.println(boardDTO);
//		
//		boardService.updateReadcount(boardDTO);
//		
//		boardDTO = boardService.getBoard(boardDTO);
//		
//		model.addAttribute("boardDTO", boardDTO);
		
		return "board/noticeContent";
	}
	
	@GetMapping("/faqList")
	public String faqList() {
		System.out.println("BoardController faqList()");
		
		return "board/faqList";
	}
	
	@GetMapping("/faqInsert")
	public String faqInsert() {
		System.out.println("BoardController faqInsert()");
		
		return "board/faqInsert";
	}
	
	@PostMapping("/faqInsertPro")
	public String faqInsertPro(BoardDTO boardDTO) {
		System.out.println("BoardController faqInsertPro()");
		
		return "redirect:/board/faqList";
	}
	
	@GetMapping("/faqContent")
	public String faqContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController faqContent()");
		
		return "board/faqContent";
	}
}
