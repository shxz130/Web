package com.shxz.daoimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.shxz.dao.XueJiDAO;
import com.shxz.entity.XueJiXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class XueJiDAOimpl implements XueJiDAO{

	private SessionFactory sessionFactory;
	@Override
	public void add(XueJiXinXi xueJiXinXi) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(xueJiXinXi);
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		String hql = "delete XueJiXinXi xueji where xueji.xuejiid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean update(XueJiXinXi xueJiXinXi) {
		// TODO Auto-generated method stub
		String hql = "update XueJiXinXi xueji set xueji.xuexiao = ?,xueji.zhuanye=?,xueji.banji=?,xueji.xuehao=? where xueji.xuejiid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, xueJiXinXi.getXuexiao());
		query.setString(1,xueJiXinXi.getZhuanye() );
		query.setString(2, xueJiXinXi.getBanji());
		query.setString(3, xueJiXinXi.getXuehao());
		query.setString(4, xueJiXinXi.getXuejiid());
		return (query.executeUpdate() > 0);
	}

	@Override
	public XueJiXinXi getXueJi(String id) {
		// TODO Auto-generated method stub
		String hql="from XueJiXinXi xueji where xueji.xuejiid=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		return (XueJiXinXi) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<XueJiXinXi> getAllXueJi() {
		// TODO Auto-generated method stub
		String hql="from XueJiXinXi";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
