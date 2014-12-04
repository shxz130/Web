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
	private String jibenid; //������Ϣ���
	private String xingming;//����
	private String nianling;//����
	private String xingbie;//�Ա�
	private String shenfenzhenghao;//���֤��
	private String jiguan;//����
	private String mingzu;//����
	private String shengyuandi;//��Դ��
	
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
