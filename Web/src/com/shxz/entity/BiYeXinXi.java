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
@Table(name="biye")
public class BiYeXinXi {
	private String biyeid;//毕业号
	private String biyezhenghao;//毕业证号
	private String xueweihao;//学位号
	private String xuewei;//学位
	private String biyeshijian;//毕业时间
	
	
	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(length=32)
	public String getBiyeid() {
		return biyeid;
	}
	public void setBiyeid(String biyeid) {
		this.biyeid = biyeid;
	}
	@Column(length=16)
	public String getBiyezhenghao() {
		return biyezhenghao;
	}
	public void setBiyezhenghao(String biyezhenghao) {
		this.biyezhenghao = biyezhenghao;
	}
	@Column(length=20)
	public String getXueweihao() {
		return xueweihao;
	}
	public void setXueweihao(String xueweihao) {
		this.xueweihao = xueweihao;
	}
	@Column(length=20)
	public String getXuewei() {
		return xuewei;
	}
	public void setXuewei(String xuewei) {
		this.xuewei = xuewei;
	}
	@Column(length=20)
	public String getBiyeshijian() {
		return biyeshijian;
	}
	public void setBiyeshijian(String biyeshijian) {
		this.biyeshijian = biyeshijian;
	}
	
}
