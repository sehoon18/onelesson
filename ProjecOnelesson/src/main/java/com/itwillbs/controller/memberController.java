package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwillbs.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class memberController {
	@Inject
	private MemberService memberService;
	
	

}
