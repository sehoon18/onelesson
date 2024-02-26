package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderDTO;


@Repository
public class MemberDAO {
	@Inject
	private SqlSession sqlSession;
//																	MemberMapper 해서 문제엿음 , 대소문자 이게 같아야함
	private static final String namespace = "com.itwillbs.mappers.memberMapper";
	
	
//	일반회원 
	public void insertMember1(MemberDTO memberDTO) {
		System.out.println("MemberDAO insertMember1()");
		sqlSession.insert(namespace+".insertMember1",memberDTO);
	}
	//강사회원
	public void insertMember2(MemberDTO memberDTO) {
		System.out.println("MemberDAO insertMember2()");
		sqlSession.insert(namespace+".insertMember2",memberDTO);
	}


	public MemberDTO usercheck(MemberDTO memberDTO) {
		System.out.println("MemberDAO userCheck()");
		return sqlSession.selectOne(namespace+".userCheck",memberDTO);
	}

	public MemberDTO getMember(String id) {
		System.out.println("MemberDAO getMember()");
		return sqlSession.selectOne(namespace+".getMember",id);
	}

	public List<MemberDTO> getMemberList(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberList()");
		return sqlSession.selectList(namespace+".getMemberList",memberDTO);
	}
	
	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO updateMember()");
		sqlSession.update(namespace+".updateMember",memberDTO);
	}

	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberDAO deleteMember()");
		sqlSession.delete(namespace+".deleteMember",memberDTO);
	}
	public MemberDTO getMemberByNick(String nick) {
		System.out.println("MemberDAO getMemberByNick()");
		return sqlSession.selectOne(namespace+".getMemberByNick",nick);
	}
	public MemberDTO getMemberByPhone(String phone) {
		System.out.println("MemberDAO getMemberByPhone()");
		return sqlSession.selectOne(namespace+".getMemberByPhone",phone);
	}
	public MemberDTO getMemberByEmail(String email) {
		System.out.println("MemberDAO getMemberByEmail()");
		return sqlSession.selectOne(namespace+".getMemberByEmail",email);
	}
	
	public MemberDTO getMemberAll(String id) {
		return sqlSession.selectOne(namespace + ".getMemberAll", id);
	}
	
	public void infoUpdate(MemberDTO memberDTO) {
		sqlSession.update(namespace + ".infoUpdate", memberDTO);
	}
	
	public void updateStatus(MemberDTO memberDTO) {
		System.out.println("MemberDAO updateStatus()");
		System.out.println(memberDTO);
		sqlSession.update(namespace+".updateStatus", memberDTO);
	}
	public MemberDTO inactiveCheck(MemberDTO memberDTO) {
		return sqlSession.selectOne(namespace + ".inactiveCheck", memberDTO);
	}
	
	public List<OrderDTO> getMyOrder(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMyOrder()");
		return sqlSession.selectList(namespace + ".getMyOrder" , memberDTO);
	}
	public List<OrderDTO> getMyOrder2(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMyOrder2()");
		return sqlSession.selectList(namespace + ".getMyOrder2" , memberDTO);
	}
	public MemberDTO getMemberLessonNum(Object attribute) {
		System.out.println("MemberDAO getMemberLessonNum()");
		return sqlSession.selectOne(namespace + ".getMemberLessonNum" , attribute);
	}
	

	public MemberDTO getMemberByLogin(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberByLogin()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberByLogin",memberDTO);
	}
	
	public MemberDTO getMemberFindIdPhoneVersion(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberFindIdPhoneVersion()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberFindIdPhoneVersion",memberDTO);
	}
	
	public MemberDTO getMemberFindIdMailVersion(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberFindIdMailVersion()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberFindIdMailVersion",memberDTO);
	}	

	public MemberDTO getMemberFindIdInstructorEmail(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberFindIdInstructorEmail()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberFindIdInstructorEmail",memberDTO);
	}
	public MemberDTO getMemberFindIdInstructorPhone(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberFindIdInstructorPhone()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberFindIdInstructorPhone",memberDTO);
	}
	public MemberDTO getMemberFindIdInstructorBusiness(MemberDTO memberDTO) {
		System.out.println("MemberDAO getMemberFindIdInstructorBusiness()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".getMemberFindIdInstructorBusiness",memberDTO);
	}
	public MemberDTO memberFindPassEmailVersion(MemberDTO memberDTO) {
		System.out.println("MemberDAO memberFindPassEmailVersion()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".memberFindPassEmailVersion",memberDTO);
	}
	public MemberDTO memberFindPassPhoneVersion(MemberDTO memberDTO) {
		System.out.println("MemberDAO memberFindPassPhoneVersion()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".memberFindPassPhoneVersion",memberDTO);
	}
	
	public MemberDTO memberFindPassInstructorEmail(MemberDTO memberDTO) {
		System.out.println("MemberDAO memberFindPassInstructorEmail()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".memberFindPassInstructorEmail",memberDTO);
	}
	public MemberDTO memberFindPassInstructorPhone(MemberDTO memberDTO) {
		System.out.println("MemberDAO memberFindPassInstructorPhone()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".memberFindPassInstructorPhone",memberDTO);
	}
	public MemberDTO memberFindPassInstructorBusiness(MemberDTO memberDTO) {
		System.out.println("MemberDAO memberFindPassInstructorBusiness()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".memberFindPassInstructorBusiness",memberDTO);
	}

	public MemberDTO foundUserIdSession(MemberDTO memberDTO) {
		System.out.println("MemberDAO foundUserIdSession()");
		System.out.println(memberDTO);
		return sqlSession.selectOne(namespace+".foundUserIdSession",memberDTO);
	}
	public void inactiveMyLesson(MemberDTO memberDTO) {
		sqlSession.update(namespace + ".inactiveMyLesson", memberDTO);
	}
	public List<MemberDTO> searchMembers(MemberDTO memberDTO) {
    	System.out.println("MemberDAO searchMembers()");
        return sqlSession.selectList(namespace+".searchMembers", memberDTO);
    }
}
