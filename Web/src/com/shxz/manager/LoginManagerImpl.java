package com.shxz.manager;

import java.util.List;

import javax.annotation.Resource;

import com.shxz.dao.LoginDAO;
import com.shxz.entity.ZhuCeXinXi;
/**
 * 
 * @author shxz130 2014-12-02
 *
 */
public class LoginManagerImpl implements LoginManager{

	private LoginDAO loginDAO;


	public ZhuCeXinXi getUser(String id){
		return loginDAO.getUser(id);
	}

	public List<ZhuCeXinXi> getAllUser(){
		return loginDAO.getAllUser();
	}

	public void addUser(ZhuCeXinXi zhuCeXinXi){
		loginDAO.addUser(zhuCeXinXi);
	}

	public boolean delUser(String id){
		return loginDAO.delUser(id);
	}

	public boolean updateUser(ZhuCeXinXi zhuCeXinXi){
		return loginDAO.updateUser(zhuCeXinXi);
	}

	public LoginDAO getLoginDAO() {
		return loginDAO;
	}
	@Resource
	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return loginDAO.count();
	}

	@Override
	public List<ZhuCeXinXi> getListByFenYe(int start, int number) {
		// TODO Auto-generated method stub
		return loginDAO.getListByFenYe(start, number);
	}

}
