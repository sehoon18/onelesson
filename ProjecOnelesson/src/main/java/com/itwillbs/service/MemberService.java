package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderDTO;


@Service
public class MemberService{
	@Inject
	private MemberDAO memberDAO;
	
	
	public void insertMember1(MemberDTO memberDTO) {
		System.out.println("MemberService insertMember1()");
		memberDAO.insertMember1(memberDTO);
	}
	
	public void insertMember2(MemberDTO memberDTO) {
		System.out.println("MemberService insertMember2()");
		memberDAO.insertMember2(memberDTO);
	}
	
	public MemberDTO userCheck(MemberDTO memberDTO) {
		System.out.println("MemberService userCheck()");
		return memberDAO.usercheck(memberDTO);
	}
	
	public MemberDTO getMember(String id) {
		System.out.println("MemberService getMember()");
		return memberDAO.getMember(id);
	}

	public List<MemberDTO> getMemberList(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberList()");
		return memberDAO.getMemberList(memberDTO);
	}
	
	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberService updateMember()");
		memberDAO.updateMember(memberDTO);
	}

	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberService deleteMember()");
		memberDAO.deleteMember(memberDTO);
	}

	public MemberDTO getMemberByNick(String nick) {
		System.out.println("MemberService getMemberByNick()");
		return memberDAO.getMemberByNick(nick);
	}

	public MemberDTO getMemberByPhone(String phone) {
		System.out.println("MemberService getMemberByPhone()");
		return memberDAO.getMemberByPhone(phone);
	}

	public MemberDTO getMemberByEmail(String email) {
		System.out.println("MemberService getMemberByEmail()");
		return memberDAO.getMemberByEmail(email);
	}

	public MemberDTO getMemberAll(String id) {
		System.out.println("MemberService getMemberAll()");
		return memberDAO.getMemberAll(id);
	}

	public void infoUpdate(MemberDTO memberDTO) {
		memberDAO.infoUpdate(memberDTO);
	}

	public void changeStatus(MemberDTO memberDTO) {
		System.out.println("MemberService changeStatus()");
		memberDAO.updateStatus(memberDTO);
		System.out.println("Status updated successfully");
	}

	public MemberDTO inactiveCheck(MemberDTO memberDTO) {
		return memberDAO.inactiveCheck(memberDTO);
	}
	
	public List<OrderDTO> getMyOrder(MemberDTO memberDTO) {
		System.out.println("MemberService getMyOrder()");
		return memberDAO.getMyOrder(memberDTO);
	}

	public MemberDTO getMemberByLogin(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberByLogin()");
		return memberDAO.getMemberByLogin(memberDTO);
	}
	public List<OrderDTO> getMyOrder2(MemberDTO memberDTO) {
		System.out.println("MemberService getMyOrder2()");
		return memberDAO.getMyOrder2(memberDTO);
	}

	public MemberDTO getMemberLessonNum(Object attribute) {
		System.out.println("MemberService getMemberLessonNum()");
		return memberDAO.getMemberLessonNum(attribute);
	}

	public MemberDTO getMemberFindIdPhoneVersion(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberFindIdPhoneVersion()");
		return memberDAO.getMemberFindIdPhoneVersion(memberDTO);
	}


	public MemberDTO getMemberFindIdMailVersion(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberFindIdMailVersion()");
		return memberDAO.getMemberFindIdMailVersion(memberDTO);
	}

	public MemberDTO getMemberFindIdInstructorEmail(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberFindIdInstructorEmail()");
		return memberDAO.getMemberFindIdInstructorEmail(memberDTO);
	}

	public MemberDTO getMemberFindIdInstructorPhone(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberFindIdInstructorPhone()");
		return memberDAO.getMemberFindIdInstructorPhone(memberDTO);
	}

	public MemberDTO getMemberFindIdInstructorBusiness(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberFindIdInstructorBusiness()");
		return memberDAO.getMemberFindIdInstructorBusiness(memberDTO);
	}

	public MemberDTO memberFindPassEmailVersion(MemberDTO memberDTO) {
		System.out.println("MemberService memberFindPassEmailVersion()");
		return memberDAO.memberFindPassEmailVersion(memberDTO);
	}

	public MemberDTO memberFindPassPhoneVersion(MemberDTO memberDTO) {
		System.out.println("MemberService memberFindPassPhoneVersion()");
		return memberDAO.memberFindPassPhoneVersion(memberDTO);
	}

	public MemberDTO memberFindPassInstructorEmail(MemberDTO memberDTO) {
		System.out.println("MemberService memberFindPassInstructorEmail()");
		return memberDAO.memberFindPassInstructorEmail(memberDTO);
	}

	public MemberDTO memberFindPassInstructorPhone(MemberDTO memberDTO) {
		System.out.println("MemberService memberFindPassInstructorPhone()");
		return memberDAO.memberFindPassInstructorPhone(memberDTO);
	}

	public MemberDTO memberFindPassInstructorBusiness(MemberDTO memberDTO) {
		System.out.println("MemberService memberFindPassInstructorBusiness()");
		return memberDAO.memberFindPassInstructorBusiness(memberDTO);
	}
	
	public MemberDTO foundUserIdSession(MemberDTO memberDTO) {
		System.out.println("MemberService foundUserIdSession()");
		return memberDAO.foundUserIdSession(memberDTO);
	}

	public void inactiveMyLesson(MemberDTO memberDTO) {
		memberDAO.inactiveMyLesson(memberDTO);
	}	

	
}

