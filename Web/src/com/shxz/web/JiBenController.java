package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxz.entity.JiBenXinXi;
import com.shxz.manager.JiBenManager;

@Controller
@RequestMapping("/jiben")
public class JiBenController {

	@Resource(name="JiBenManager")
	private JiBenManager jiBenManager;
	
	
	@RequestMapping("/addrequest")
	public String addrequest(HttpServletRequest request){
		
		return "/WEB-INF/jiben/add";	
	}
	
	@RequestMapping("/add")
	public String add(JiBenXinXi jiBenXinXi,HttpServletRequest request){
		jiBenManager.addJiBen(jiBenXinXi);
		return "redirect:/jiben/list";	
	}
	

	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		request.setAttribute("jiBenList", jiBenManager.getAllJiBen());
		return "/WEB-INF/jiben/list";
	}
	
	@RequestMapping("/del")
	public void del(String id,HttpServletResponse response){
	
		String result = "{\"result\":\"error\"}";
		
		if(jiBenManager.delJiBen(id)){
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
	public String updateUser(JiBenXinXi jiBenXinXi,HttpServletRequest request){
		if(jiBenManager.updateJiBen(jiBenXinXi)){
			return "redirect:/jiben/list";
		}else{
			return "/error";
		}
	}
	@RequestMapping("/updaterequest")
	public String updateUser(String id,HttpServletRequest request){
		JiBenXinXi jiBenXinXi=jiBenManager.getJiBen(id);
		request.setAttribute("jiben", jiBenXinXi);
		return "/WEB-INF/jiben/update";
	}
}