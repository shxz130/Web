package com.shxz.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 
 * @author shxz130 2014-12-04
 *
 */
@Entity
@Table(name="biyesheng")
public class BiYeSheng {
	
	private String biyeshengid; //毕业生id
	private JiBenXinXi jiBenXinXi;//基本信息
	private XueJiXinXi xueJiXinXi;//学籍信息 
	private BiYeXinXi biYeXinXi; //毕业信息
	private String dengjiriqi;//登记日期
	
	@Id
	@GeneratedValue(generator="system-uuid")
	@GenericGenerator(name = "system-uuid",strategy="uuid")
	@Column(length=32)
	public String getBiyeshengid() {
		return biyeshengid;
	}
	public void setBiyeshengid(String biyeshengid) {
		this.biyeshengid = biyeshengid;
	}
	@OneToOne(fetch=FetchType.EAGER) @JoinColumn(name="jiben_id")
	public JiBenXinXi getJiBenXinXi() {
		return jiBenXinXi;
	}
	
	public void setJiBenXinXi(JiBenXinXi jiBenXinXi) {
		this.jiBenXinXi = jiBenXinXi;
	}
	@OneToOne(fetch=FetchType.EAGER) @JoinColumn(name="xueji_id")
	public XueJiXinXi getXueJiXinXi() {
		return xueJiXinXi;
	}
	public void setXueJiXinXi(XueJiXinXi xueJiXinXi) {
		this.xueJiXinXi = xueJiXinXi;
	}
	@OneToOne(fetch=FetchType.EAGER) @JoinColumn(name="biye_id")
	public BiYeXinXi getBiYeXinXi() {
		return biYeXinXi;
	}
	public void setBiYeXinXi(BiYeXinXi biYeXinXi) {
		this.biYeXinXi = biYeXinXi;
	}
	public String getDengjiriqi() {
		return dengjiriqi;
	}
	public void setDengjiriqi(String dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}

}
