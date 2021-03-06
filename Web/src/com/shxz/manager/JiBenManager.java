package com.shxz.manager;
/**
 * 
 * @author shxz130
 *
 */
import java.util.List;

import com.shxz.entity.JiBenXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public interface JiBenManager {
	public JiBenXinXi getJiBen(String id);
	public List<JiBenXinXi> getAllJiBen();
	public void addJiBen(JiBenXinXi jiBenXinXi);
	public boolean updateJiBen(JiBenXinXi jiBenXinXi);
	public boolean delJiBen(String id);
}
