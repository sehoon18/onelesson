package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;


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
		System.out.println("MemberService userCheck()");
		return sqlSession.selectOne(namespace+".userCheck",memberDTO);
	}

	public MemberDTO getMember(String id) {
		System.out.println("MemberService getMember()");
		return sqlSession.selectOne(namespace+".getMember",id);
	}

	public List<MemberDTO> getMemberList(MemberDTO memberDTO) {
		System.out.println("MemberService getMemberList()");
		return sqlSession.selectList(namespace+".getMemberList",memberDTO);
	}
	
	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberService updateMember()");
		sqlSession.update(namespace+".updateMember",memberDTO);
	}

	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberService deleteMember()");
		sqlSession.delete(namespace+".deleteMember",memberDTO);
	}
	public MemberDTO getMemberByNick(String nick) {
		System.out.println("MemberService getMemberByNick()");
		return sqlSession.selectOne(namespace+".getMemberByNick",nick);
	}
	public MemberDTO getMemberByPhone(String phone) {
		System.out.println("MemberService getMemberByPhone()");
		return sqlSession.selectOne(namespace+".getMemberByPhone",phone);
	}
	public MemberDTO getMemberByEmail(String email) {
		System.out.println("MemberService getMemberByEmail()");
		return sqlSession.selectOne(namespace+".getMemberByEmail",email);
	}
	






}
