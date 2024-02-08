package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.BoardDAO;

@Service
public class BoardService {
	@Inject
	private BoardDAO boardDAO;
	
}
