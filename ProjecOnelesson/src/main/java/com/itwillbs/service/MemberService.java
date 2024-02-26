package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderDTO;
import com.itwillbs.domain.PageDTO;


@Service
public class MemberService {
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


	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberService updateMember()");
		memberDAO.updateMember(memberDTO);
	}

	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberService deleteMember()");
		memberDAO.deleteMember(memberDTO);
	}

	public List<OrderDTO> getMyOrder(MemberDTO memberDTO) {
		System.out.println("MemberService getMyOrder()");
		return memberDAO.getMyOrder(memberDTO);
	}

	public List<OrderDTO> getMyOrder2(MemberDTO memberDTO) {
		System.out.println("MemberService getMyOrder2()");
		return memberDAO.getMyOrder2(memberDTO);
	}

	public MemberDTO getMemberLessonNum(Object attribute) {
		System.out.println("MemberService getMemberLessonNum()");
		return memberDAO.getMemberLessonNum(attribute);
	}



	


	

	


	
	
	
}

