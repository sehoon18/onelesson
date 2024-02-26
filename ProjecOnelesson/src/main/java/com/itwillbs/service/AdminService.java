package com.itwillbs.service;

import java.util.jar.Attributes.Name;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminDAO;
import com.itwillbs.domain.AdminDTO;
import com.itwillbs.domain.AdminQnaDTO;

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

	public AdminDTO getAdminByPhone(String phone) {
		System.out.println("AdminService getAdminByPhone()");
		
		return adminDAO.getAdminByPhone(phone);
	}

	public AdminDTO getAdminByEmail(String email) {
		System.out.println("AdminService getAdminByEmail()");
		
		return adminDAO.getAdminByEmail(email);
	}

	public AdminDTO adminCheck(AdminQnaDTO adminQnaDTO) {
		System.out.println("AdminService adminCheck()");
		
		return adminDAO.adminCheck(adminQnaDTO);
	}

//	public void updateQna(AdminQnaDTO adminQnaDTO) {
//		System.out.println("AdminService updateQna()");
//		
//		adminDAO.updateQna(adminQnaDTO);
//	}
	
	


}
