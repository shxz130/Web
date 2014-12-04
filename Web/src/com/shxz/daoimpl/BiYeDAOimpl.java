package com.shxz.daoimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.shxz.dao.BiYeDAO;
import com.shxz.entity.BiYeXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 * @since jdk1.7
 */
public class BiYeDAOimpl implements BiYeDAO{

	private SessionFactory sessionFactory;
	@Override
	public void add(BiYeXinXi biYeXinXi) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(biYeXinXi);
	}

	@Override
	public boolean update(BiYeXinXi biYeXinXi) {
		// TODO Auto-generated method stub

		String hql = "update BiYeXinXi biye set biye.biyezhenghao=?, biye.xueweihao=?, biye.xuewei=?,biye.biyeshijian=? where biye.biyeid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,biYeXinXi.getBiyezhenghao());
		query.setString(1,biYeXinXi.getXueweihao());
		query.setString(2, biYeXinXi.getXuewei());
		query.setString(3,biYeXinXi.getBiyeshijian());
		query.setString(4, biYeXinXi.getBiyeid());
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		String hql="delete BiYeXinXi biye where biye.biyeid=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public BiYeXinXi getBiYe(String id) {
		// TODO Auto-generated method stub
		String hql="from BiYeXinXi biye where biye.biyeid= ? ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (BiYeXinXi) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BiYeXinXi> getAllBiYe() {
		// TODO Auto-generated method stub
		String hql="from BiYeXinXi";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
