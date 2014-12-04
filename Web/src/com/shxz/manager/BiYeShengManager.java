package com.shxz.manager;
/**
 * 
 * @author shxz130
 *
 */
import java.util.List;

import com.shxz.entity.BiYeSheng;
import com.shxz.entity.BiYeXinXi;
import com.shxz.entity.JiBenXinXi;
import com.shxz.entity.XueJiXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public interface BiYeShengManager {
	public void add(JiBenXinXi jiBenXinXi,XueJiXinXi xueJiXinXi,BiYeXinXi biYeXinXi,BiYeSheng biYeSheng);
	public boolean update(JiBenXinXi jiBenXinXi,XueJiXinXi xueJiXinXi,BiYeXinXi biYeXinXi,BiYeSheng biYeSheng);
	public boolean del(String id);
	public BiYeSheng getBiYeSheng(String id);
	public List<BiYeSheng> getAllBiYeSheng();
}
