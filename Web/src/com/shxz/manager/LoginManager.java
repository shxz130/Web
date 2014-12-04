package com.shxz.manager;

import java.util.List;

import com.shxz.entity.ZhuCeXinXi;
/**
 * 
 * @author shxz130 2014-12-02
 *
 */
public interface LoginManager {
	public ZhuCeXinXi getUser(String id);
	
	public List<ZhuCeXinXi> getAllUser();
	
	public void addUser(ZhuCeXinXi zhuCeXinXi);
	
	public boolean delUser(String id);
	
	public boolean updateUser(ZhuCeXinXi zhuCeXinXi);
}