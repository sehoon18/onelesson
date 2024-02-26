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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.LessonService;
import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class memberController {
	@Inject
	private MemberService memberService;
	@Inject
	private LessonService lessonService; 
	@Inject
	private BoardService boardService;
	
	//	메인페이지
	@GetMapping("/main")
	public String main() {
		System.out.println("MemberController main()");
		return "member/main";
	}
	
	//	강사,일반 회원가입 선택 페이지
	@GetMapping("/memberSelectPage")
	public String memberSelectPage() {
		System.out.println("MemberController memberSelectPage()");
		return "member/memberSelectPage";
	}
	
	
	@GetMapping("/memberAgreement")
	public String memberAgreement() {
		System.out.println("MemberController memberAgreement()");
		return "member/memberAgreement";
	}
	
	//	약관동의서 일반회원
	@GetMapping("/memberAgreement1")
	public String memberAgreement1() {
		System.out.println("MemberController memberAgreement1()");
		return "member/memberAgreement1";
	}
	
	//	약관동의서 강사회원
	@GetMapping("/memberAgreement2")
	public String memberAgreement2() {
		System.out.println("MemberController memberAgreement2()");
		return "member/memberAgreement2";
	}
	
	//	일반회원 회원가입
	@GetMapping("/memberInsert1")
	public String memberInsert1() {
		System.out.println("MemberController memberInsert1()");
		return "member/memberInsert1";
	}
	
	//	일반회원 회원가입 Pro
	@PostMapping("/memberInsertPro1")
	public String memberInsertPro1(MemberDTO memberDTO) {
		System.out.println("MemberController memberInsertPro1()");
		System.out.println(memberDTO);
		memberDTO.setJoin(new Timestamp(System.currentTimeMillis()));
		memberDTO.setType(0);
		memberDTO.setStatus(0);
		memberService.insertMember1(memberDTO);
		return "redirect:/member/memberLogin";	
	}
	
	//	강사회원 회원가입
	@GetMapping("/memberInsert2")
	public String memberInsert2() {
		System.out.println("MemberController memberInsert2()");
		return "member/memberInsert2";
	}
	
	//	강사회원 회원가입 Pro
	@PostMapping("/memberInsertPro2")
	public String memberInsertPro2(MemberDTO memberDTO) {
		System.out.println("MemberController memberInsertPro2()");
		System.out.println(memberDTO);
		memberDTO.setJoin(new Timestamp(System.currentTimeMillis()));
		memberDTO.setType(1);
		memberDTO.setStatus(0);
		memberService.insertMember2(memberDTO);
		return "redirect:/member/memberLogin";	
	}
	
	//	로그인
	@GetMapping("/memberLogin")
	public String memberLogin() {
		System.out.println("MemberController memberLogin()");
		return "member/memberLogin";
	}
	
	//	로그인 Pro
	@PostMapping("/memberLoginPro")
	public String memberLoginPro(MemberDTO memberDTO , HttpSession session, RedirectAttributes redirectAttributes) {
		System.out.println("MemberController memberLoginPro()");
		System.out.println(memberDTO);	
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 != null) {
			if(memberDTO2.getStatus() == 0) {
				session.setAttribute("id", memberDTO2.getId());

				return "redirect:/member/main";
			} else {
				return "redirect:/member/inactive";
			}
		} else {
			redirectAttributes.addFlashAttribute("message", "아이디/비밀번호가 일치하지 않습니다.");
			return "redirect:/member/memberLogin";
		}
	}
	
	@GetMapping("/inactive")
	public String inactive(HttpSession session, Model model) {
		System.out.println("MemberController inactive()");
		return "member/inactive";
	}
	
	@PostMapping("/inactivePro")
	public String inactivePro(MemberDTO memberDTO, BoardDTO boardDTO, RedirectAttributes redirectAttributes){
		System.out.println("MemberController inactivePro()");
		memberDTO = memberService.inactiveCheck(memberDTO);
		if(memberDTO !=null) {
			boardDTO.setName(memberDTO.getId());
			boardDTO.setSubject("비활성 계정 활성화 신청");
			boardDTO.setContent("비활성 계정 활성화 신청");
			boardDTO.setUpdate(new Timestamp(System.currentTimeMillis()));
			boardService.insertQna(boardDTO);
	        redirectAttributes.addFlashAttribute("message", "신청이 완료되었습니다.");

	        return "redirect:/member/main";
		}else {
	        redirectAttributes.addFlashAttribute("message", "아이디/전화번호가 일치하지 않습니다.");

			return "redirect:/member/inactive";
		}
	}
	
	// 회원정보수정
	@GetMapping("/memberUpdate")
	public String memberUpdate(HttpSession session, Model model) {
		System.out.println("MemberController memberUpdate()");
		String id =(String)session.getAttribute("id");
		MemberDTO memberDTO = memberService.getMember(id);
		model.addAttribute("memberDTO" , memberDTO);
		return "member/memberUpdate";
	}
	
	//	회원정보수정 Pro
	@PostMapping("/memberUpdatePro")
	public String memberUpdatePro(MemberDTO memberDTO){
		System.out.println("MemberController memberUpdatePro()");
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if(memberDTO2 !=null) {
			memberService.updateMember(memberDTO);
			return "redirect:/member/main";
		}else {
			return "redirect:/member/memberUpdate";
		}
	}
	
	//	회원정보삭제
	@GetMapping("/memberDelete")
	public String memberDelete() {
		System.out.println("MemberController memberDelete()");
		return "member/memberDelete";
	}
	
	//	회원정보삭제Pro
	@PostMapping("/memberDeletePro")
	public String deletePro(MemberDTO memberDTO, HttpSession session) {
	System.out.println("MemberController memberDeletePro()");
	System.out.println(memberDTO); 
	MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
	if(memberDTO2 != null) {
		memberService.deleteMember(memberDTO);
		memberDTO.setStatus(1);
		session.invalidate();
		return "redirect:/member/main";	
		}else {
		return "redirect:/member/memberDelete";
		}
	}
	
	//	아이디찾기
	@GetMapping("/memberFindId")
	public String memberFindId() {
		System.out.println("MemberController memberFindId()");
		return "member/memberFindId";
	}	
	
	//	아이디찾기Pro
	@PostMapping("/memberFindIdPro")
	public String memberFindIdPro() {
		System.out.println("MemberController memberFindIdPro()");
		return "member/memberFindId";
	}
	
	//	비밀번호찾기
	@GetMapping("/memberFindPass")
	public String memberFindPass() {
		System.out.println("MemberController memberFindPass()");
	    return "member/memberFindPass";
	}	
	
	//	비밀번호찾기Pro
	@PostMapping("/memberFindPassPro")
	public String memberFindPassPro() {
		System.out.println("MemberController memberFindPassPro()");
		
		
		return "member/memberFindPassPro";
	}
	
	//	비밀번호재설정
	@GetMapping("/memberResetPass")
	public String memberResetPass(MemberDTO memberDTO, HttpSession session, Model model) {
		System.out.println("MemberController memberResetPass()");
		// 세션에서 아이디를 읽어옴
	    MemberDTO memberDTO2 = memberService.foundUserIdSession(memberDTO);


	    // 아이디를 모델에 추가하여 뷰로 전달
	    model.addAttribute("foundUserId", memberDTO2);

	    return "member/memberResetPass";
	}
	
	
	// -----------------------[myPage]------------------------------
	

	@GetMapping("/myInfo")
	public String myInfo(HttpSession session, MemberDTO memberDTO, Model model) {
		System.out.println("MemberController myInfo()");
		
		String id = (String)session.getAttribute("id");
		memberDTO = memberService.getMemberAll(id);
		model.addAttribute("memberDTO", memberDTO);
		return "member/myInfo";
	}
	
	@PostMapping("/infoUpdate")
	public String infoUpdate(HttpServletRequest request ,HttpSession session, MemberDTO memberDTO, Model model, RedirectAttributes redirectAttributes) {
		System.out.println("MemberController infoUpdate()");
		memberDTO.setId((String)session.getAttribute("id"));
		memberDTO = memberService.userCheck(memberDTO);
		if(memberDTO != null) {
			memberDTO.setImage(request.getParameter("npass"));
			memberService.infoUpdate(memberDTO);
			model.addAttribute("memberDTO", memberDTO);
			
	        redirectAttributes.addFlashAttribute("message", "변경이 완료되었습니다.");
			return "redirect:/member/myInfo";
		} else {
			return "redirect:/member/myInfo";
		}
		
	}
	
	@GetMapping("/mypage")
	public String mypage(HttpSession session, MemberDTO memberDTO, Model model, LessonDTO lessonDTO, PageDTO pageDTO ,HttpServletRequest request) {
		System.out.println("MemberController mypage()");
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
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
		pageDTO.setId((String)session.getAttribute("id"));
		
		
		int count = 0;
		if(memberDTO.getType() == 0) {
			List<LessonDTO> lessonList = lessonService.getMyLessonList(pageDTO); // 일반회원
			model.addAttribute("lessonList", lessonList);
			count = lessonService.getMyLessonCount(pageDTO);
		} else if(memberDTO.getType() == 1) {
			List<LessonDTO> lessonList = lessonService.getMyinsertLessonList(pageDTO); // 강사
			model.addAttribute("lessonList", lessonList);
			count =  lessonService.getMyinsertLessonCount(pageDTO);
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
		
		model.addAttribute("pageDTO", pageDTO);
		
		System.out.println(memberDTO);
		return "member/mypage";
	}
	
	@GetMapping("/resign")
	public String resign(MemberDTO memberDTO, Model model) {
		System.out.println("MemberController resign");
		
		model.addAttribute("memberDTO", memberDTO);
		return "member/resign";
	}
	
	@PostMapping("/resignPro")
	public String resignPro(HttpSession session, MemberDTO memberDTO, Model model, RedirectAttributes redirectAttributes) {
		System.out.println("MemberController resignPro");
		
		memberDTO.setId((String)session.getAttribute("id"));
		memberDTO = memberService.userCheck(memberDTO);
		System.out.println(memberDTO);
		if(memberDTO != null) {
			memberService.inactiveMyLesson(memberDTO);
			memberService.deleteMember(memberDTO);
			session.invalidate();
	        redirectAttributes.addFlashAttribute("message", "회원탈퇴가 완료되었습니다.");
			return "redirect:/member/main";
		} else {
			return "redirect:/member/resign";
		}
	}

	@GetMapping("/myLessonList")
	public String myLessonList() {
		System.out.println("MemberController myLessonList");
		return "member/myLessonList";
	}
	@GetMapping("/myPayment")
	public String myPayment(HttpSession session, MemberDTO memberDTO, Model model, LessonDTO lessonDTO, LessonDTO orderDTO, PageDTO pageDTO ,HttpServletRequest request) {
		System.out.println("MemberController myPayment()");
		System.out.println(session.getAttribute("id"));
		
		memberDTO = memberService.getMember((String)session.getAttribute("id"));
	
		System.out.println(memberDTO);
		model.addAttribute("memberDTO", memberDTO);
		
		System.out.println(orderDTO);
		
		model.addAttribute("lessonDTO", lessonDTO);
		int pageSize = 2;
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		pageDTO.setId((String)session.getAttribute("id"));
		
		//고쳐야 할 부분
		int count =  lessonService.getMyLessonCount(pageDTO);
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

		List<OrderDTO> orderList;
		if (memberDTO.getType() == 0 ) {
			orderList = memberService.getMyOrder(memberDTO);
		} else if (memberDTO.getType() == 1) {
			orderList = memberService.getMyOrder2(memberDTO);
		} else { model.addAttribute("orderError", "데이터가 없습니다.");
		return "member/orderErrorPage";
		}
		
		model.addAttribute("orderList" , orderList);
		model.addAttribute("pageDTO", pageDTO);
		
		if (orderList.isEmpty()) {
			model.addAttribute("orderError", "데이터가 없습니다.");
			return "member/orderErrorPage";
		}
		
		System.out.println(lessonDTO);
		System.out.println(memberDTO);
		System.out.println(orderList.size());
		System.out.println(orderList.get(0).getLES_SUBJECT());
		
		
		return "member/myPayment";
	}
// ----------------- TEST ------------------------------
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		System.out.println("logout");
		session.invalidate();
		
		return "member/main";
	}
	
}
