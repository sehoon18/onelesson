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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.LessonService;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	private BoardService boardService;
	@Inject
	private LessonService lessonService;
	@Inject
	private AdminService adminService;
	@Inject
	private MemberService memberService;
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@GetMapping("/reviewWrite")
	public String review(LessonDTO lessonDTO, Model model, BoardDTO boardDTO, HttpSession session, RedirectAttributes redirectAttributes) {
		System.out.println("BoardController reviewWrite()");
		
		boardDTO.setId((String)session.getAttribute("id"));
		boardDTO = boardService.ReviewCheck(boardDTO);
		
		if(boardDTO == null) {
			lessonDTO = lessonService.getLesson(lessonDTO);
			model.addAttribute("lessonDTO", lessonDTO);
			return "board/reviewWrite";
		} else {
			redirectAttributes.addFlashAttribute("message", "이미 리뷰를 작성하셨습니다.");
			return "redirect:/member/mypage";
		}
		
		
	}
	
	@PostMapping("/reviewWritePro")
	public String reviewWritePro(HttpServletRequest request, MultipartFile preview) throws Exception{
		System.out.println("BoardController reviewWritePro()");
		
		UUID uuid = UUID.randomUUID();
		String filename = uuid.toString() + "_" + preview.getOriginalFilename();
		FileCopyUtils.copy(preview.getBytes(), new File(uploadPath, filename));
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setId(request.getParameter("id"));
		boardDTO.setNum(Integer.parseInt(request.getParameter("num")));
		boardDTO.setContent(request.getParameter("content"));
		boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
		boardDTO.setRating(Integer.parseInt(request.getParameter("rating")));
		boardDTO.setPreview(filename);
		boardService.insertReview(boardDTO);
		
		return "redirect:/board/reviewList";
	}
	
	@GetMapping("/reviewList")
	public String reviewList(HttpServletRequest request, PageDTO pageDTO, HttpSession session, Model model, MemberDTO memberDTO) {
		System.out.println("BoardController reviewList()");
		
		String id = (String)session.getAttribute("id");
		memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId(id);
		
		memberDTO = memberService.getMember(id);

		int count = 0;
		if(memberDTO.getType() == 0) {
			List<BoardDTO> boardList = boardService.getMyReviewList(pageDTO); // 일반회원
			model.addAttribute("boardList", boardList);
			count = boardService.getMyReviewCount(pageDTO);
		} else if(memberDTO.getType() == 1) {
			List<BoardDTO> boardList = boardService.getMyreceiveReviewList(pageDTO); // 강사
			model.addAttribute("boardList", boardList);
			count = boardService.getMyreceiveReviewCount(pageDTO);
		} else {
			return "member/memberLogin";
		}
		
		
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
		
		return "board/reviewList";
	}
	
	@GetMapping("/notice")
	public String noticeList(HttpServletRequest request, PageDTO pageDTO, Model model) { 
		System.out.println("BoardController noticeList()");
		
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
		
		List<BoardDTO> noticeList = boardService.getNoticeList(pageDTO);
		
		int count = boardService.getNoticeCount();
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
		
		List<BoardDTO> faqList = boardService.getFaqList(pageDTO);
		
		int count = boardService.getFaqCount();
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
	
	@GetMapping("/qnaList")
	public String lessonList(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO, HttpSession session, MemberDTO memberDTO) {
		System.out.println("LessonController qnaList()");
		
		String id = (String)session.getAttribute("id");
		memberDTO = memberService.getMember(id);
		
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
		model.addAttribute("boardList", boardList);
		int count =  boardService.getQnaCount(pageDTO);
		
		
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
		
		model.addAttribute("pageDTO", pageDTO);
		
		return "board/qnaList";
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
	public String qnaQuestion(HttpSession session, BoardDTO boardDTO, Model model, MemberDTO memberDTO) {
		System.out.println("BoardController qnaAnswer()");
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
		if(memberDTO == null) {
			boardDTO = boardService.getQ(boardDTO);
			model.addAttribute("boardDTO", boardDTO);
			return "board/qnaAnswer";
		} else {
			return "redirect:/board/lessonQna";
		}
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
			return "redirect:/board/lessonQnaAnswer?num="+boardDTO.getNum();
		}
	}

	@GetMapping("/lessonQna")
	public String lessonQna(HttpServletRequest request, PageDTO pageDTO, Model model, LessonDTO lessonDTO, HttpSession session, MemberDTO memberDTO) {
		System.out.println("LessonController lessonQna()");
		
		String id = (String)session.getAttribute("id");
		memberDTO = memberService.getMember(id);
		
		int pageSize = 3;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId(id);

		int count = 0;
		if(memberDTO.getType() == 0) {
			List<BoardDTO> boardList = boardService.getLqnaList(pageDTO);
			model.addAttribute("boardList", boardList);
		} else if(memberDTO.getType() == 1) {
			List<BoardDTO> boardList = boardService.getreceiveLqnaList(pageDTO);
			model.addAttribute("boardList", boardList);
			count =  boardService.getreceiveLqnaCount(pageDTO);
		} else {
			return "member/memberLogin";
		}
		
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
		
		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("pageDTO", pageDTO);
		
		return "board/lessonQna";
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
	public String lessonQnaContent(BoardDTO boardDTO, Model model) {
		System.out.println("BoardController lessonQnaContent()");
			
		boardDTO = boardService.getLqna(boardDTO);
		model.addAttribute("boardDTO", boardDTO);
		return "board/lessonQnaContent";
	}

	@GetMapping("/lessonQnaAnswer")
	public String lessonQnaQuestion(HttpSession session, BoardDTO boardDTO, Model model, MemberDTO memberDTO) {
		System.out.println("BoardController lessonQnaAnswer()");
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
		if(memberDTO != null) {
			if(memberDTO.getType() == 1) {
				boardDTO = boardService.getLqna(boardDTO);
				model.addAttribute("boardDTO", boardDTO);
				return "board/lessonQnaAnswer";
			} else {
				return "redirect:/board/lessonQna";
			}
		}else {
			return "redirect:/member/memberLogin";
		}
		
	}
	
	@PostMapping("/lessonQnaAnswerPro")
	public String lessonQnaAnswerPro(HttpSession session, BoardDTO boardDTO, MemberDTO memberDTO) {
		System.out.println("BoardController lessonQnaAnswerPro()");
		
		memberDTO.setId((String)session.getAttribute("id"));
		memberDTO = memberService.userCheck(memberDTO);

		if(memberDTO != null) {
			boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
			boardService.updateLqna(boardDTO);
			return "redirect:/board/lessonQna";
		} else {
			return "redirect:/board/lessonQnaAnswer?num="+boardDTO.getNum();
		}
	}
	
	@GetMapping("/wish")
	public String wish(HttpServletRequest request, Model model, PageDTO pageDTO, HttpSession session, BoardDTO boardDTO, MemberDTO memberDTO) {
		System.out.println("BoardController wish()");
		String id = (String)session.getAttribute("id");
		memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO", memberDTO);
		
		int pageSize = 3;
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId(id);
		
		List<BoardDAO> boardList = boardService.getWishList(pageDTO);
		
		int count =  boardService.getWishCount(pageDTO);
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
		
		return "board/wish";
	}
	
	@GetMapping("/wishToggle")
	@ResponseBody
	public String wishToggle(MemberDTO memberDTO) {
		System.out.println("BoardController wishToggle()");
		
		return "board/wishToggle";
	}
	
}
