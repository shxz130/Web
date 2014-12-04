package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
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
import com.shxz.manager.BiYeManager;
import com.shxz.manager.BiYeShengManager;

@Controller
@RequestMapping("/biyesheng")
public class BiYeShengController {

	@Resource(name="BiYeShengManager")
	private BiYeShengManager biYeShengManager;
	
	
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
		return "redirect:/biyesheng/list";	
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
			return "redirect:/biyesheng/list";
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
}