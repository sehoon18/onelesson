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
	
	@GetMapping("/noticeInsert")
	public String noticeInsert() {
		System.out.println("BoardController noticeInsert()");
		
		return "board/noticeInsert";
	}

	@PostMapping("/noticeInsertPro")
	public String noticeInsertPro(BoardDTO boardDTO) {
		System.out.println("BoardController noticeInsertPro()");
		System.out.println(boardDTO);
		
		boardService.noticeInsert(boardDTO);
		
		return "redirect:/board/noticeList";
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
	
	@GetMapping("/noticeUpdate")
	public String noticeUpdate(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController noticeUpdate()");
		System.out.println(boardDTO);
		
		boardDTO = boardService.getNotice(boardDTO);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/noticeUpdate";
	}
	
	@PostMapping("/noticeUpdatePro")
	public String noticeUpdatePro(BoardDTO boardDTO) {
		System.out.println("BoardController noticeUpdatePro()");
		System.out.println(boardDTO);
		
		boardService.noticeUpdate(boardDTO);
		return "redirect:/board/noticeList";
	}
	
	@GetMapping("/noticeDelete")
	public String noticeDelete(BoardDTO boardDTO) {
		System.out.println("BoardController noticeDelete()");
		System.out.println(boardDTO);
		
		boardService.noticeDelete(boardDTO);
		
		return "redirect:/board/noticeList";
	}
	
	@GetMapping("/faqList")
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
	
	@GetMapping("/faqInsert")
	public String faqInsert() {
		System.out.println("BoardController faqInsert()");
		
		return "board/faqInsert";
	}
	
	@PostMapping("/faqInsertPro")
	public String faqInsertPro(BoardDTO boardDTO) {
		System.out.println("BoardController faqInsertPro()");
		System.out.println(boardDTO);
		
		boardService.faqInsert(boardDTO);
		
		return "redirect:/board/faqList";
	}
	
	@GetMapping("/faqContent")
	public String faqContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController faqContent()");
		System.out.println(boardDTO);
		
		boardDTO = boardService.getFaq(boardDTO);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/faqContent";
	}
	
	@GetMapping("/faqUpdate")
	public String faqUpdate(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController faqUpdate()");
		System.out.println(boardDTO);
		
		boardDTO = boardService.getFaq(boardDTO);
		
		model.addAttribute("boardDTO", boardDTO);
		
		return "board/faqUpdate";
	}
	
	@PostMapping("/faqUpdatePro")
	public String faqUpdatePro(BoardDTO boardDTO) {
		System.out.println("BoardController faqUpdatePro()");
		System.out.println(boardDTO);
		
		boardService.faqUpdate(boardDTO);
		return "redirect:/board/faqList";
	}
	
	@GetMapping("/faqDelete")
	public String faqDelete(BoardDTO boardDTO) {
		System.out.println("BoardController faqDelete()");
		System.out.println(boardDTO);
		
		boardService.faqDelete(boardDTO);
		
		return "redirect:/board/faqList";
	}
	
	
}
