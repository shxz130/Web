package com.shxz.manager;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
import java.util.List;

import com.shxz.entity.XueJiXinXi;

public interface XueJiManager {
	public void add(XueJiXinXi xueJiXinXi);
	public boolean del(String id);
	public boolean update(XueJiXinXi xueJiXinXi);
	public XueJiXinXi getXueJi(String id);
	public List<XueJiXinXi> getAllXueJi();
}
