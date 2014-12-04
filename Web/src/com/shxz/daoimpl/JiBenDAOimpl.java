package com.shxz.daoimpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.shxz.dao.JiBenDAO;
import com.shxz.entity.JiBenXinXi;
/**
 * 
 * @author shxz130 2014-12-03
 *
 */
public class JiBenDAOimpl implements JiBenDAO{

	private SessionFactory sessionFactory;


	@Override
	public JiBenXinXi getJiBen(String id) {
		// TODO Auto-generated method stub
		String hql="from JiBenXinXi jiben where jiben.jibenid= ? ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (JiBenXinXi) query.uniqueResult();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<JiBenXinXi> getAllJiBen() {
		// TODO Auto-generated method stub
		String hql="from JiBenXinXi";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
	}

	@Override
	public void addJiBen(JiBenXinXi jiBenXinXi) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(jiBenXinXi);
	}

	@Override
	public boolean updateJiBen(JiBenXinXi jiBenXinXi) {
		// TODO Auto-generated method stub
		String hql = "update JiBenXinXi jiben set jiben.xingming = ?,jiben.nianling=? ,jiben.xingbie=?,jiben.shenfenzhenghao=?, jiben.jiguan=?,jiben.mingzu=?, jiben.shengyuandi=? where jiben.jibenid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, jiBenXinXi.getXingming());
		query.setString(1, jiBenXinXi.getNianling());
		query.setString(2, jiBenXinXi.getXingbie());
		query.setString(3,jiBenXinXi.getShenfenzhenghao());
		query.setString(4, jiBenXinXi.getJiguan());
		query.setString(5, jiBenXinXi.getMingzu());
		query.setString(6, jiBenXinXi.getShengyuandi());
		query.setString(7,jiBenXinXi.getJibenid());
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean delJiBen(String id) {
		// TODO Auto-generated method stub
		String hql = "delete JiBenXinXi jiben where jiben.jibenid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		return (query.executeUpdate() > 0);
	}
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
