package com.itwillbs.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.BoardService;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {
	
	@Inject
	private AdminService adminService;
	
	@Inject
	private MemberService memberService;
	
	@Inject
	private BoardService boardService;
	
	
	//관리자 회원가입 아이디 중복확인
	@GetMapping("/admin/idCheck")
	public String idCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController idCheck()");
		System.out.println(adminDTO);
		
		AdminDTO adminDTO2 = adminService.getAdmin(adminDTO.getId());
		
		System.out.println(adminDTO2);
		
		String result = "";
		if(adminDTO2 != null) {
			result = "iddup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	//관리자 회원가입 연락처 중복확인
	@GetMapping("/admin/phoneCheck")
	public String phoneCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController phoneCheck()");
		System.out.println(adminDTO);

		AdminDTO adminDTO2 = adminService.getAdminByPhone(adminDTO.getPhone());

		System.out.println(adminDTO2);

		String result = "";
		if (adminDTO2 != null) {
			result = "phonedup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
	
	//관리자 회원가입 이메일 중복확인
	@GetMapping("/admin/emailCheck")
	public String emailCheck(AdminDTO adminDTO) {
		System.out.println("AjaxController emailCheck()");
		System.out.println(adminDTO);

		AdminDTO adminDTO2 = adminService.getAdminByEmail(adminDTO.getEmail());

		System.out.println(adminDTO2);

		String result = "";
		if (adminDTO2 != null) {
			result = "emaildup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}

	
	
	//------------------------ [member] ----------------------------
	
	
	//일반/강사회원 회원가입 아이디 중복확인
	@GetMapping("/member/checkId")
	public String checkId(MemberDTO memberDTO) {
		System.out.println("AjaxController checkId()");
		System.out.println(memberDTO);
		
		MemberDTO memberDTO2 = memberService.getMember(memberDTO.getId());
		
		System.out.println(memberDTO2);
		
		String result = "";
		if(memberDTO2 != null) {
			result = "iddup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	//일반/강사회원 회원가입 닉네임 중복확인
	@GetMapping("/member/checkNick")
	public String checkNick(MemberDTO memberDTO) {
		System.out.println("AjaxController checkNick()");
		System.out.println(memberDTO);
		
		MemberDTO memberDTO2 = memberService.getMemberByNick(memberDTO.getNick());
		
		System.out.println(memberDTO2);
		
		String result = "";
		if(memberDTO2 != null) {
			result = "nickdup";
		}else {
			result = "availavle";
		}
		System.out.println(result);
		
		return result;
	}
	
	//일반/강사회원 회원가입 연락처 중복확인
	@GetMapping("/member/checkPhone")
	public String checkPhone(MemberDTO memberDTO) {
		System.out.println("AjaxController checkPhone()");
		System.out.println(memberDTO);

		MemberDTO memberDTO2 = memberService.getMemberByPhone(memberDTO.getPhone());

		System.out.println(memberDTO2);

		String result = "";
		if (memberDTO2 != null) {
			result = "phonedup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
	
	//일반/강사회원 회원가입 이메일 중복확인
	@GetMapping("/member/checkEmail")
	public String checkEmail(MemberDTO memberDTO) {
		System.out.println("AjaxController checkEmail()");
		System.out.println(memberDTO);

		MemberDTO memberDTO2 = memberService.getMemberByEmail(memberDTO.getEmail());

		System.out.println(memberDTO2);

		String result = "";
		if (memberDTO2 != null) {
			result = "emaildup";
		} else {
			result = "available";
		}
		System.out.println(result);

		return result;
	}
	
	
	//?
	@GetMapping("/member/checkMemberLogin")
	public String checkMemberLogin(MemberDTO memberDTO, HttpSession session) {
	    System.out.println("AjaxController checkMemberLogin()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberByLogin(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    // 회원이 존재하고 제공된 비밀번호가 일치하는지 확인
	    if (memberDTO2 != null) {
	        result = "success";  // 사용자 이름과 비밀번호가 일치


	        session.setAttribute("id", memberDTO2.getId());
	        
	        // 여기서 메인 페이지로의 URL을 반환할 수도 있습니다.
	        // result = "/main";  // 예시: "/main"은 실제로 존재하는 메인 페이지의 URL로 수정해야 합니다.
	    } else {
	        result = "available"; // 올바르지 않은 사용자 이름 또는 비밀번호
	    }

	    System.out.println(result);

	    return result;
	}
	
	//아이디 찾기 일반회원 이메일로 찾기
	@GetMapping("/member/getMemberFindIdMailVersion")
	public String getMemberFindIdMailVersion(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController getMemberFindIdMailVersion()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberFindIdMailVersion(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}
	

	//아이디 찾기 일반회원 연락처로 찾기
	@GetMapping("/member/getMemberFindIdPhoneVersion")
	public String getMemberFindIdPhoneVersion(MemberDTO memberDTO, HttpSession session) {
	    System.out.println("AjaxController getMemberFindIdPhoneVersion()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberFindIdPhoneVersion(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}
	
	
	//아이디 찾기 강사회원 이메일로 찾기
	@GetMapping("/member/getMemberFindIdInstructorEmail")
	public String getMemberFindIdInstructorEmail(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController getMemberFindIdInstructorEmail()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberFindIdInstructorEmail(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}	
	
	
	
	//아이디 찾기 강사회원 연락처로 찾기
	@GetMapping("/member/getMemberFindIdInstructorPhone")
	public String getMemberFindIdInstructorPhone(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController getMemberFindIdInstructorPhone()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberFindIdInstructorPhone(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}
	
	
	//아이디 찾기 강사회원 사업자번호로 찾기
	@GetMapping("/member/getMemberFindIdInstructorBusiness")
	public String getMemberFindIdInstructorBusiness(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController getMemberFindIdInstructorBusiness()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.getMemberFindIdInstructorBusiness(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}
	
	
	
	//비밀번호 찾기 일반회원 이메일로 찾기
	@GetMapping("/member/memberFIndPassEmailVersion")
	public String memberFIndPassEmailVersion(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController memberFIndPassEmailVersion()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.memberFIndPassEmailVersion(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}	
	
	//비밀번호 찾기 일반회원 연락처로 찾기
	@GetMapping("/member/memberFIndPassPhoneVersion")
	public String memberFIndPassPhoneVersion(MemberDTO memberDTO, HttpSession session) {
		System.out.println("AjaxController memberFIndPassPhoneVersion()");
	    System.out.println(memberDTO);

	    // 제공된 사용자 이름을 기반으로 회원 정보 가져오기
	    MemberDTO memberDTO2 = memberService.memberFIndPassPhoneVersion(memberDTO);

	    System.out.println(memberDTO2);

	    String result = "";

	    if (memberDTO2 != null) {
	        result = memberDTO2.getId();  
//	        result = memberDTO2.getId();
//	        session.setAttribute("id", memberDTO2.getId());
	        
	    } else {
	        result = "try again"; 
	    }

	    System.out.println(result);

	    return result;
	}	
	
	
	
	
	// -------------------------------- wish toggle ----------------------------------------------
    @PostMapping("/board/wishToggle")
    public ResponseEntity<Map<String, String>> wishToggle(@RequestParam("id") String id, @RequestParam("wish") String wish, @RequestParam("num") int num) {
        Map<String, String> response = new HashMap<>();
        
        LessonDTO lessonDTO = new LessonDTO();
        lessonDTO.setId(id);
        lessonDTO.setNum(num);
        
        try {
            if ("add".equals(wish)) {
                boardService.addWish(lessonDTO);
                response.put("message", "찜 추가 완료");
            } else if ("remove".equals(wish)) {
                boardService.removeWish(lessonDTO);
                response.put("message", "찜 취소 완료");
            }
            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            response.put("message", "오류가 발생했습니다");
            return new ResponseEntity<>(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
