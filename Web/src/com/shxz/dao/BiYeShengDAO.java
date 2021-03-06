package com.shxz.dao;

import java.util.List;

import com.shxz.entity.BiYeSheng;

public interface BiYeShengDAO {
	public void add(BiYeSheng biYeSheng);
//	public boolean update(BiYeSheng biYeSheng);
	public boolean del(String id);
	public BiYeSheng getBiYeSheng(String id);
	public List<BiYeSheng> getAllBiYeSheng();
	public int count();
	
	public BiYeSheng getBiYeShengByXH(String xuehao);
	public List<BiYeSheng> getListByFenYe(int start,int number);
}
