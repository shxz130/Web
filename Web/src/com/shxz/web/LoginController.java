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

import com.shxz.entity.ZhuCeXinXi;
import com.shxz.manager.LoginManager;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Resource
	private LoginManager loginManager;
	
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request){
		return "index";
	}
	
	@RequestMapping("/addrequest")
	public String addrequest(HttpServletRequest request){
		return "/WEB-INF/login/add";
	}
	
	@RequestMapping("/addUser")
	public String addUser(ZhuCeXinXi user,HttpServletRequest request){
		System.out.println("id£∫"+user.getUserid()+"√‹¬Î£∫"+user.getUserpasswd()+"” œ‰"+user.getYouxiangdizhi());
		Date a=new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
		String time=sdf.format(a);
		System.out.println(time);
		user.setZhuceshijian(time);
		loginManager.addUser(user);
		return "redirect:/login/getListByFenYe?pageNow=1&pageSize=10";	
	}
	
	
	@RequestMapping("/getUserById")
	public String getUserById(String id,HttpServletRequest request){
		
		
		ZhuCeXinXi user2=loginManager.getUser(id);
		List<ZhuCeXinXi> a=new ArrayList<ZhuCeXinXi>();
		a.add(user2);
		if(user2!=null){
			request.setAttribute("userList", a);
		}
		return "/WEB-INF/login/loginlist";
	}
	
	
	@RequestMapping("/getUser")
	public String getUser(ZhuCeXinXi user,HttpServletRequest request){
		
		System.out.println("id:"+user.getUserid()+"passwd:"+user.getUserpasswd());
		ZhuCeXinXi user2=loginManager.getUser(user.getUserid());
		
		if(user2!=null){
			System.out.println("id2:"+user2.getUserid()+"passwd2:"+user2.getUserpasswd());
			if((user.getUserpasswd()).equals(user2.getUserpasswd())){
				return "/WEB-INF/login/loginok";
			}
		}
		return "index";
	}
	
	
	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		
		request.setAttribute("count", loginManager.count());
		System.out.println("count:"+loginManager.count());
		request.setAttribute("userList", loginManager.getAllUser());
		return "/WEB-INF/login/loginlist";
	}
	
	@RequestMapping("/getListByFenYe")
	public String getListByFenYe(int pageNow, int pageSize,HttpServletRequest request){
		int rowCount=loginManager.count();
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
		request.setAttribute("userList", loginManager.getListByFenYe((pageNow-1)*pageSize, pageSize));
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