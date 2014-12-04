package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.shxz.entity.BiYeXinXi;
import com.shxz.manager.BiYeManager;

@Controller
@RequestMapping("/biye")
public class BiYeController {

	@Resource(name="BiYeManager")
	private BiYeManager biYeManager;
	
	
	@RequestMapping("/addrequest")
	public String addrequest(HttpServletRequest request){
		
		return "/WEB-INF/biye/add";	
	}
	
	@RequestMapping("/add")
	public String add(BiYeXinXi biYeXinXi,HttpServletRequest request){
		biYeManager.add(biYeXinXi);
		return "redirect:/biye/list";	
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		
		List<BiYeXinXi> biyeList=biYeManager.getAllBiYe();
		request.setAttribute("biYeList", biyeList);
		return "/WEB-INF/biye/list";
	}
	
	@RequestMapping("/del")
	public void del(String id,HttpServletResponse response){
	
		String result = "{\"result\":\"error\"}";
		
		if(biYeManager.del(id)){
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
	public String update(BiYeXinXi biYeXinXi,HttpServletRequest request){
		if(biYeManager.update(biYeXinXi)){
			return "redirect:/biye/list";
		}else{
			return "/error";
		}
	}
	@RequestMapping("/updaterequest")
	public String updateUser(String id,HttpServletRequest request){
		BiYeXinXi biYeXinXi=biYeManager.getBiYe(id);
		System.out.println(biYeXinXi);
		request.setAttribute("biye", biYeXinXi);
		return "/WEB-INF/biye/update";
	}
}