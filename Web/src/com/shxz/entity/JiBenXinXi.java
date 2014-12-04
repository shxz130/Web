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
@Table(name="jiben")
public class JiBenXinXi {
	private String jibenid; //基本信息表号
	private String xingming;//姓名
	private String nianling;//年龄
	private String xingbie;//性别
	private String shenfenzhenghao;//身份证号
	private String jiguan;//籍贯
	private String mingzu;//名族
	private String shengyuandi;//生源地
	
	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(length=32)
	public String getJibenid() {
		return jibenid;
	}
	public void setJibenid(String jibenid) {
		this.jibenid = jibenid;
	}
	@Column(length=20)
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	@Column(length=5)
	public String getNianling() {
		return nianling;
	}
	public void setNianling(String nianling) {
		this.nianling = nianling;
	}
	@Column(length=5)
	public String getXingbie() {
		return xingbie;
	}
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	@Column(length=20)
	public String getShenfenzhenghao() {
		return shenfenzhenghao;
	}
	public void setShenfenzhenghao(String shenfenzhenghao) {
		this.shenfenzhenghao = shenfenzhenghao;
	}
	@Column(length=40)
	public String getJiguan() {
		return jiguan;
	}
	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}
	@Column(length=10)
	public String getMingzu() {
		return mingzu;
	}
	public void setMingzu(String mingzu) {
		this.mingzu = mingzu;
	}
	@Column(length=40)
	public String getShengyuandi() {
		return shengyuandi;
	}
	public void setShengyuandi(String shengyuandi) {
		this.shengyuandi = shengyuandi;
	}


}
