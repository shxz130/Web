package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxz.entity.XueJiXinXi;
import com.shxz.manager.XueJiManager;

@Controller
@RequestMapping("/xueji")
public class XueJiController {

	@Resource(name="XueJiManager")
	private XueJiManager xueJiManager;
	
	
	@RequestMapping("/addrequest")
	public String addrequest(HttpServletRequest request){
		
		return "/WEB-INF/xueji/add";	
	}
	
	@RequestMapping("/add")
	public String add(XueJiXinXi xueJiXinXi,HttpServletRequest request){
		xueJiManager.add(xueJiXinXi);
		return "redirect:/xueji/list";	
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		
		List<XueJiXinXi> xueJiList=xueJiManager.getAllXueJi();
		request.setAttribute("xueJiList", xueJiList);
		return "/WEB-INF/xueji/list";
	}
	
	@RequestMapping("/del")
	public void del(String id,HttpServletResponse response){
	
		String result = "{\"result\":\"error\"}";
		
		if(xueJiManager.del(id)){
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
	public String update(XueJiXinXi xueJiXinXi,HttpServletRequest request){
		if(xueJiManager.update(xueJiXinXi)){
			return "redirect:/xueji/list";
		}else{
			return "/error";
		}
	}
	@RequestMapping("/updaterequest")
	public String updateUser(String id,HttpServletRequest request){
		XueJiXinXi xueJiXinXi=xueJiManager.getXueJi(id);
		request.setAttribute("xueji", xueJiXinXi);
		return "/WEB-INF/xueji/update";
	}
}