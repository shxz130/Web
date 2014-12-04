package com.shxz.daoimpl;

import java.util.List;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import com.shxz.dao.LoginDAO;
import com.shxz.entity.ZhuCeXinXi;
/**
 * 
 * @author shxz130 2014-12-02
 *
 */
public class LoginDAOimpl implements LoginDAO{

	private SessionFactory sessionFactory;
	
	@Override
	public ZhuCeXinXi getUser(String id) {
		// TODO Auto-generated method stub
		String hql="from ZhuCeXinXi zhuce where zhuce.userid= ? ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0,id);
		return (ZhuCeXinXi) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ZhuCeXinXi> getAllUser() {
		// TODO Auto-generated method stub
		String hql="from ZhuCeXinXi";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return  query.list();
		
	}

	@Override 
	public void addUser(ZhuCeXinXi zhuCeXinXi) {
		// TODO Auto-generated method stub		
		sessionFactory.getCurrentSession().save(zhuCeXinXi);
	}

	@Override
	public boolean delUser(String id) {
		// TODO Auto-generated method stub
	
		String hql = "delete ZhuCeXinXi zhuce where zhuce.zhuceid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean updateUser(ZhuCeXinXi zhuCeXinXi) {
		// TODO Auto-generated method stub
		String hql = "update ZhuCeXinXi zhuce set zhuce.userid = ?,zhuce.userpasswd=? ,zhuce.userpasswdcfg=? where zhuce.zhuceid = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, zhuCeXinXi.getUserid());
		query.setString(1, zhuCeXinXi.getUserpasswd());
		query.setString(2, zhuCeXinXi.getUserpasswdcfg());
		query.setString(3, zhuCeXinXi.getZhuceid());
		return (query.executeUpdate() > 0);
	}
	
	@Resource 
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
