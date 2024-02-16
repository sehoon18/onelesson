package com.itwillbs.dao;

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

	public void updateMember(MemberDTO memberDTO) {
		System.out.println("MemberService updateMember()");
		sqlSession.update(namespace+".updateMember",memberDTO);
	}

	public void deleteMember(MemberDTO memberDTO) {
		System.out.println("MemberService deleteMember()");
		sqlSession.delete(namespace+".deleteMember",memberDTO);
	}






}
