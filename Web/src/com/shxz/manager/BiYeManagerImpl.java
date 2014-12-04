package com.shxz.manager;

import java.util.List;

import javax.annotation.Resource;

import com.shxz.dao.BiYeDAO;
import com.shxz.entity.BiYeXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class BiYeManagerImpl implements BiYeManager{

	private BiYeDAO biYeDAO;
	@Override
	public void add(BiYeXinXi biYeXinXi) {
		// TODO Auto-generated method stub
		biYeDAO.add(biYeXinXi);
	}
	@Override
	public boolean update(BiYeXinXi biYeXinXi) {
		// TODO Auto-generated method stub
		return biYeDAO.update(biYeXinXi);
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		return biYeDAO.del(id);
	}

	@Override
	public BiYeXinXi getBiYe(String id) {
		// TODO Auto-generated method stub
		return biYeDAO.getBiYe(id);
	}

	@Override
	public List<BiYeXinXi> getAllBiYe() {
		// TODO Auto-generated method stub
		return biYeDAO.getAllBiYe();
	}
	public BiYeDAO getBiYeDAO() {
		return biYeDAO;
	}
	@Resource
	public void setBiYeDAO(BiYeDAO biYeDAO) {
		this.biYeDAO = biYeDAO;
	}
}
