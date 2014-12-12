package com.shxz.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 
 * @author shxz130 2014-12-02
 *
 */
@Entity
@Table(name="zhuce")
public class ZhuCeXinXi {
	private String zhuceid;
	private String userid;
	private String userpasswd;
	private String userpasswdcfg;
	private String zhuceshijian;
	private String xingbie;
	private String dianhuahaoma;
	private String youxiangdizhi;

	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(length=32)
	public String getZhuceid() {
		return zhuceid;
	}
	public void setZhuceid(String zhuceid) {
		this.zhuceid = zhuceid;
	}
	@Column(length=30)
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Column(length=30)
	public String getUserpasswd() {
		return userpasswd;
	}
	public void setUserpasswd(String userpasswd) {
		this.userpasswd = userpasswd;
	}
	@Column(length=15)
	public String getZhuceshijian() {
		return zhuceshijian;
	}
	public void setZhuceshijian(String zhuceshijian) {
		this.zhuceshijian = zhuceshijian;
	}
	@Column(length=30)
	public String getUserpasswdcfg() {
		return userpasswdcfg;
	}
	public void setUserpasswdcfg(String userpasswdcfg) {
		this.userpasswdcfg = userpasswdcfg;
	}
	@Column(length=15)
	public String getDianhuahaoma() {
		return dianhuahaoma;
	}
	public void setDianhuahaoma(String dianhuahaoma) {
		this.dianhuahaoma = dianhuahaoma;
	}
	@Column(length=28)
	public String getYouxiangdizhi() {
		return youxiangdizhi;
	}
	public void setYouxiangdizhi(String youxiangdizhi) {
		this.youxiangdizhi = youxiangdizhi;
	}
	@Column(length=5)
	public String getXingbie() {
		return xingbie;
	}
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
}
