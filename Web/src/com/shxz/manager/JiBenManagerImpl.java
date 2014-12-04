package com.shxz.manager;

import java.util.List;

import javax.annotation.Resource;

import com.shxz.dao.JiBenDAO;
import com.shxz.entity.JiBenXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class JiBenManagerImpl implements JiBenManager{

	private JiBenDAO jiBenDAO;


	@Override
	public JiBenXinXi getJiBen(String id) {
		// TODO Auto-generated method stub
		return jiBenDAO.getJiBen(id);
	}

	@Override
	public List<JiBenXinXi> getAllJiBen() {
		// TODO Auto-generated method stub
		return jiBenDAO.getAllJiBen();
	}

	@Override
	public void addJiBen(JiBenXinXi jiBenXinXi) {
		// TODO Auto-generated method stub
		jiBenDAO.addJiBen(jiBenXinXi);
	}

	@Override
	public boolean updateJiBen(JiBenXinXi jiBenXinXi) {
		// TODO Auto-generated method stub
		return jiBenDAO.updateJiBen(jiBenXinXi);
	}

	@Override
	public boolean delJiBen(String id) {
		// TODO Auto-generated method stub
		return jiBenDAO.delJiBen(id);
	}
	public JiBenDAO getJiBenDAO() {
		return jiBenDAO;
	}
	@Resource
	public void setJiBenDAO(JiBenDAO jiBenDAO) {
		this.jiBenDAO = jiBenDAO;
	}
}
