package com.shxz.daoimpl;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import com.shxz.dao.BiYeShengDAO;
import com.shxz.entity.BiYeSheng;
/**
 * 
 * @author shxz130 2014-12-03
 * @since jdk1.7
 */
public class BiYeShengDAOimpl implements BiYeShengDAO{

	private SessionFactory sessionFactory;
	@Override
	public void add(BiYeSheng biYeSheng){
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(biYeSheng);
	}

	@Override
	public boolean del(String id) {
		// TODO Auto-generated method stub
		String hql="delete BiYeSheng biyesheng where biyesheng.biyeshengid=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public BiYeSheng getBiYeSheng(String id) {
		// TODO Auto-generated method stub
		String hql="from BiYeSheng biyesheng where biyesheng.biyeshengid= ? ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (BiYeSheng) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BiYeSheng> getAllBiYeSheng() {
		// TODO Auto-generated method stub
		String hql="from BiYeSheng";
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
