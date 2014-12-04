package com.shxz.manager;

import java.util.List;

import javax.annotation.Resource;

import com.shxz.dao.BiYeDAO;
import com.shxz.dao.BiYeShengDAO;
import com.shxz.dao.JiBenDAO;
import com.shxz.dao.XueJiDAO;
import com.shxz.entity.BiYeSheng;
import com.shxz.entity.BiYeXinXi;
import com.shxz.entity.JiBenXinXi;
import com.shxz.entity.XueJiXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class BiYeShengManagerImpl implements BiYeShengManager{

	private JiBenDAO jiBenDAO;
	private XueJiDAO xueJiDAO;
	private BiYeDAO biYeDAO;
	private BiYeShengDAO biYeShengDAO;

	@Override
	public void add(JiBenXinXi jiBenXinXi, XueJiXinXi xueJiXinXi,
			BiYeXinXi biYeXinXi, BiYeSheng biYeSheng) {
		// TODO Auto-generated method stub
		jiBenDAO.addJiBen(jiBenXinXi);
		xueJiDAO.add(xueJiXinXi);
		biYeDAO.add(biYeXinXi);
		biYeSheng.setJiBenXinXi(jiBenXinXi);
		biYeSheng.setXueJiXinXi(xueJiXinXi);
		biYeSheng.setBiYeXinXi(biYeXinXi);
		biYeShengDAO.add(biYeSheng);
	}

	@Override
	public boolean update(JiBenXinXi jiBenXinXi, XueJiXinXi xueJiXinXi,
			BiYeXinXi biYeXinXi, BiYeSheng biYeSheng) {
		// TODO Auto-generated method stub
		jiBenDAO.updateJiBen(jiBenXinXi);
		xueJiDAO.update(xueJiXinXi);
		biYeDAO.update(biYeXinXi);
		return true;
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		return biYeShengDAO.del(id);
	}

	@Override
	public BiYeSheng getBiYeSheng(String id) {
		// TODO Auto-generated method stub
		return biYeShengDAO.getBiYeSheng(id);
	}

	@Override
	public List<BiYeSheng> getAllBiYeSheng() {
		// TODO Auto-generated method stub
		return biYeShengDAO.getAllBiYeSheng();
	}

	public JiBenDAO getJiBenDAO() {
		return jiBenDAO;
	}
	@Resource
	public void setJiBenDAO(JiBenDAO jiBenDAO) {
		this.jiBenDAO = jiBenDAO;
	}

	public BiYeDAO getBiYeDAO() {
		return biYeDAO;
	}
	@Resource
	public void setBiYeDAO(BiYeDAO biYeDAO) {
		this.biYeDAO = biYeDAO;
	}

	public XueJiDAO getXueJiDAO() {
		return xueJiDAO;
	}
	@Resource
	public void setXueJiDAO(XueJiDAO xueJiDAO) {
		this.xueJiDAO = xueJiDAO;
	}

	public BiYeShengDAO getBiYeShengDAO() {
		return biYeShengDAO;
	}
	@Resource
	public void setBiYeShengDAO(BiYeShengDAO biYeShengDAO) {
		this.biYeShengDAO = biYeShengDAO;
	}

	
	
}
