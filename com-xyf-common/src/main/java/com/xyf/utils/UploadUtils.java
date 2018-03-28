package com.xyf.utils;

import java.io.File;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.Logger;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

public class UploadUtils {

    private static final Logger logger = (Logger) LogManager.getLogger(UploadUtils.class);

    //获得文件扩展名，返回值包括点 .
    public static String getExtension(String filename) {
        return filename.substring(filename.lastIndexOf('.'), filename.length());
    }
    
    //使用七牛来上传文件
    
    public static void uploadwithQiniu(File file,String accessKey,String secretKey,String bucket)
    {

    	//如果是Windows情况下，格式是 D:\\qiniu\\test.png
    	Auth auth = Auth.create(accessKey, secretKey);
    	Zone z=Zone.autoZone();
    	Configuration cfg = new Configuration(Zone.zone0());

    	String upToken = auth.uploadToken(bucket);
    	//创建上床对象
    	UploadManager uploadManager=new UploadManager(cfg);
    	
    	try {
    	    Response response = uploadManager.put(file, file.getName(), auth.uploadToken(bucket));
    	    //解析上传成功的结果
    	    if(response.isOK())
    	    {
    	    		logger.debug("使用七牛云上传文件成功",file.getName());
    	    	
    	    }
    	    else
    	    {
    	    	logger.debug("使用七牛云上传文件失败 失败原因",file.getName(),response.bodyString());
    	    	throw new RuntimeException("使用七牛云上床失败"+file.getName());
    	    }
    	    DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
    	    System.out.println(putRet.key);
    	    System.out.println(putRet.hash);
    	} catch (QiniuException ex) {
    	    Response r = ex.response;
    	    System.err.println(r.toString());
    	    try {
    	        System.err.println(r.bodyString());
    	    } catch (QiniuException ex2) {

    	    	throw new RuntimeException("使用七牛云上床失败"+file.getName());

    	    }
    	}

    	
    	
    	
    }

}
