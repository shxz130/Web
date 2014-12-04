package com.shxz.manager;
/**
 * 
 * @author shxz130
 *
 */
import java.util.List;

import com.shxz.entity.BiYeXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public interface BiYeManager {
	public void add(BiYeXinXi biYeXinXi);
	public boolean update(BiYeXinXi biYeXinXi);
	public boolean del(String id);
	public BiYeXinXi getBiYe(String id);
	public List<BiYeXinXi> getAllBiYe();
}
