package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminQnaDAO;

@Service
public class AdminQnaService {
	@Inject
	private AdminQnaDAO adminQnaDAO;
}
