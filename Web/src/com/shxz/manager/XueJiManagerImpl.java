package com.shxz.manager;

import java.util.List;

import javax.annotation.Resource;

import com.shxz.dao.XueJiDAO;
import com.shxz.entity.XueJiXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class XueJiManagerImpl implements XueJiManager {

	private XueJiDAO xueJiDAO;
	
	
	@Override
	public void add(XueJiXinXi xueJiXinXi) {
		// TODO Auto-generated method stub
		xueJiDAO.add(xueJiXinXi);
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		return xueJiDAO.del(id);
	}

	@Override
	public boolean update(XueJiXinXi xueJiXinXi) {
		// TODO Auto-generated method stub
		return xueJiDAO.update(xueJiXinXi);
	}

	@Override
	public XueJiXinXi getXueJi(String id) {
		// TODO Auto-generated method stub
		return xueJiDAO.getXueJi(id);
	}

	@Override
	public List<XueJiXinXi> getAllXueJi() {
		// TODO Auto-generated method stub
		return xueJiDAO.getAllXueJi();
	}

	public XueJiDAO getXueJiDAO() {
		return xueJiDAO;
	}
	@Resource
	public void setXueJiDAO(XueJiDAO xueJiDAO) {
		this.xueJiDAO = xueJiDAO;
	}

}
