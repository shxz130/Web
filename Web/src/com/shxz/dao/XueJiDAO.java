package com.shxz.dao;

import java.util.List;

import com.shxz.entity.XueJiXinXi;

/**
 * 
 * @author shxz130 2014-12-03
 * 
 */
public interface XueJiDAO {
	
	public void add(XueJiXinXi xueJiXinXi);
	public boolean del(String id);
	public boolean update(XueJiXinXi xueJiXinXi);
	public XueJiXinXi getXueJi(String id);
	public List<XueJiXinXi> getAllXueJi();

}
