package com.xyf.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.xyf.pojo.Admin;
import com.xyf.pojo.User;
import com.xyf.utils.UploadUtils;


@Controller
public class OtherController {

/**
 * 欢迎页面
 * @param request
 * @param response
 * @return
 * @throws ServletException
 * @throws IOException
 */
@RequestMapping("/welcome.do")
public ModelAndView welcome(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
{
	
	return new ModelAndView("welcome");
	
	
}
	
	
	
	
	

@RequestMapping(value="/upload.do",method=RequestMethod.GET)
public ModelAndView uploadConfig(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
{
request.getRequestDispatcher("/lib/ueditor/jsp/config.json").forward(request, response);
return null;
}
//处理文件上传
@RequestMapping(value="/upload.do",method=RequestMethod.POST)
	public @ResponseBody Map<String,String>uploadSubmit(MultipartFile upfile,HttpServletRequest request) throws IllegalStateException, IOException
	{
	 //创建目标文件
	//获得文件的后缀名
	String extension=UploadUtils.getExtension(upfile.getOriginalFilename());
	String filename=UUID.randomUUID().toString()+extension;
  
	File parendir=new File(request.getServletContext().getRealPath("/upload"));
	if(!parendir.exists())
	{
		parendir.mkdirs();
		
	}
	File file =new File(parendir,filename);
	upfile.transferTo(file);
	
	
//上传七牛云相关配置
	String accessKey="NPRqznHv3_pwyzKngKiIgoSSx-UgCfXTykb_Nca1";
	String secretKey="-niGEpY2aetGYN-oebpUXmQdrdcJ69TOiD_gTVE_";
	String bucket="lovexyf";
	
//	相关测试方法 UploadUtils.uploadwithQiniu(file, accessKey.getValue(), secretKey.getValue(), bucket.getValue());
	UploadUtils.uploadwithQiniu(file, accessKey, secretKey, bucket);

    file.delete();
    Map<String,String> result=new HashMap<String,String>();
    result.put("state", "success");
    result.put("original", upfile.getOriginalFilename());
    result.put("title", filename);
    result.put("type", extension);
    result.put("url", "/"+filename);
    System.out.println("上传完成");
    //将图片的url插入数据库
    String newfileurl="http://p3rftc17d.bkt.clouddn.com"+"/"+filename;
    System.out.println(result.toString());
    request.setAttribute("newfileurl", newfileurl);
	return result;
    
		
	}


@RequestMapping("/")
public ModelAndView index(HttpServletRequest request,HttpServletResponse response)
{
	Admin admin=(Admin) request.getSession().getAttribute("adminUser");
	User user=(User) request.getSession().getAttribute("user");

	if(admin==null&&user==null)
	{
		ModelAndView modelAndView= new ModelAndView("/adminUser/login");
		return modelAndView;

	}
	
	return new ModelAndView("index");
	
}

	
}
