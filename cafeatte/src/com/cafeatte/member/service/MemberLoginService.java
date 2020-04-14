package com.cafeatte.member.service;

import com.cafeatte.main.Service;
import com.cafeatte.member.dao.MemberDAO;
import com.cafeatte.member.dto.LoginDTO;

public class MemberLoginService implements Service {

private MemberDAO dao;
	
	public MemberLoginService(MemberDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public Object service(Object[] objs) throws Exception {
		// TODO Auto-generated method stub
		return dao.login((LoginDTO) objs[0]);
	}

}
