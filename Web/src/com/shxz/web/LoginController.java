package com.shxz.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shxz.entity.ZhuCeXinXi;
import com.shxz.manager.LoginManager;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Resource
	private LoginManager loginManager;
	@RequestMapping("/addUser")
	public String addUser(ZhuCeXinXi user,HttpServletRequest request){
	
		Date a=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat();
		user.setZhuceshijian(formatter.format(a));
		loginManager.addUser(user);
		return "redirect:/login/getAllUser";	
	}
	@RequestMapping("/getUser")
	public String getUser(ZhuCeXinXi user,HttpServletRequest request){
		ZhuCeXinXi user2=loginManager.getUser(user.getUserid());
		if(user2!=null){
			if((user.getUserpasswd()).equals(user2.getUserpasswd())){
				return "/WEB-INF/login/loginok";
			}
		}
		return "index";
	}
	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		request.setAttribute("userList", loginManager.getAllUser());
		return "/WEB-INF/login/loginlist";
	}
	
	@RequestMapping("/delUser")
	public void delUser(String id,HttpServletResponse response){
		System.out.println(id);
		String result = "{\"result\":\"error\"}";
		
		if(loginManager.delUser(id)){
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

	@RequestMapping("/updateUser")
	public String updateUser(ZhuCeXinXi user,HttpServletRequest request){
		
		if(loginManager.updateUser(user)){
			return "redirect:/login/getAllUser";
		}else{
			return "/error";
		}
	}
	@RequestMapping("/updateuserrequest")
	public String updateUser(String id,HttpServletRequest request){
		ZhuCeXinXi zhuCeXinXi=loginManager.getUser(id);
		request.setAttribute("user", zhuCeXinXi);
		return "/WEB-INF/login/updatelogin";
	}
}