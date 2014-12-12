package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxz.entity.BiYeSheng;
import com.shxz.entity.BiYeXinXi;
import com.shxz.entity.JiBenXinXi;
import com.shxz.entity.XueJiXinXi;
import com.shxz.entity.ZhuCeXinXi;
import com.shxz.manager.BiYeShengManager;

@Controller
@RequestMapping("/biyesheng")
public class BiYeShengController {

	@Resource(name="BiYeShengManager")
	private BiYeShengManager biYeShengManager;
	
	@RequestMapping("/getBiYeShengByXueHao")
	public String getUserById(String xuehao,HttpServletRequest request){
		BiYeSheng biYeSheng=biYeShengManager.getBiYeShengByXH(xuehao);
		if(biYeSheng!=null){
			List<BiYeSheng> a=new ArrayList<BiYeSheng>();
			a.add(biYeSheng);
			request.setAttribute("biYeShengList",a);
		}
		return "/WEB-INF/biyesheng/list";
	}
	
	
	@RequestMapping("/getListByFenYe")
	public String getListByFenYe(int pageNow, int pageSize,HttpServletRequest request){
		int rowCount=biYeShengManager.count();
		int pageCount;
		if(rowCount%pageSize==0){
			pageCount=rowCount/pageSize;
		}else{
			pageCount=rowCount/pageSize+1;
		}
		if(pageNow<=0){
			return "error";
		}
		if(pageNow>pageCount){
			return "error";
		}
		request.setAttribute("rowCount",rowCount);
		request.setAttribute("pageCount",pageCount);
		request.setAttribute("pageSize",pageSize);
		request.setAttribute("pageNow",pageNow);
		request.setAttribute("pageNext",pageNow+1);
		request.setAttribute("pageLast",pageNow-1);
		request.setAttribute("biYeShengList", biYeShengManager.getListByFenYe((pageNow-1)*pageSize, pageSize));
		return "/WEB-INF/biyesheng/list";
	}
	
	@RequestMapping("/addrequest")
	public String addrequest(HttpServletRequest request){
		
		return "/WEB-INF/biyesheng/add";	
	}
	
	@RequestMapping("/add")
	public String add(JiBenXinXi jiBenXinXi,XueJiXinXi xueJiXinXi,BiYeXinXi biYeXinXi,BiYeSheng biYeSheng ,HttpServletRequest request){
		
		Date a=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat();
		biYeSheng.setDengjiriqi(formatter.format(a));
		biYeShengManager.add(jiBenXinXi, xueJiXinXi, biYeXinXi, biYeSheng);
		return "redirect:/biyesheng/getListByFenYe?pageNow=1&pageSize=10";
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		
		List<BiYeSheng> biYeShengList=biYeShengManager.getAllBiYeSheng();
		request.setAttribute("biYeShengList", biYeShengList);
		return "/WEB-INF/biyesheng/list";
	}
	
	@RequestMapping("/del")
	public void del(String id,HttpServletResponse response){
	
		String result = "{\"result\":\"error\"}";
		
		if(biYeShengManager.del(id)){
			result = "{\"result\":\"success\"}";
		}
		response.setContentType("application/json");
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/update")
	public String update(JiBenXinXi jiBenXinXi,XueJiXinXi xueJiXinXi,BiYeXinXi biYeXinXi,BiYeSheng biYeSheng,HttpServletRequest request){
		if(biYeShengManager.update(jiBenXinXi, xueJiXinXi, biYeXinXi, biYeSheng)){
			return "redirect:/biyesheng/getListByFenYe?pageNow=1&pageSize=10";
		}else{
			return "/error";
		}
	}
	@RequestMapping("/updaterequest")
	public String updateUser(String id,HttpServletRequest request){
		BiYeSheng biYeSheng=biYeShengManager.getBiYeSheng(id);
		request.setAttribute("biyesheng", biYeSheng);
		return "/WEB-INF/biyesheng/update";
	}
	
	@RequestMapping("/get")
	public String get(String id,HttpServletRequest request){
		BiYeSheng biYeSheng=biYeShengManager.getBiYeSheng(id);
		request.setAttribute("biyesheng", biYeSheng);
		return "/WEB-INF/biyesheng/look";
	}
}