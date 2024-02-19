package com.itwillbs.service;

import java.util.jar.Attributes.Name;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminDAO;
import com.itwillbs.domain.AdminDTO;

@Service
public class AdminService {
	@Inject
	private AdminDAO adminDAO;
	
	public void adminInsert(AdminDTO adminDTO) {
		System.out.println("AdminService adminInsert()");
		
		adminDAO.adminInsert(adminDTO);
	}

	public AdminDTO adminCheck(AdminDTO adminDTO) {
		System.out.println("AdminService adminCheck()");
		
		return adminDAO.adminCheck(adminDTO);
	}

	public AdminDTO getAdmin(String id) {
		System.out.println("AdminService getAdmin()");
		
		return adminDAO.getAdmin(id);
	}

	public void updateAdmin(AdminDTO adminDTO) {
		System.out.println("AdminService updateAdmin()");

		adminDAO.updateAdmin(adminDTO);
	}
	


}