package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminBoardDAO;
import com.itwillbs.dao.AdminDAO;

@Service
public class AdminBoardService {
	@Inject
	private AdminBoardDAO adminBoardDAO;
}
