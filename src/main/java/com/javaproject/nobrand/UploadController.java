package com.javaproject.nobrand;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UploadController {
	@Autowired
	ServletContext context;
	
	@ResponseBody
	@RequestMapping(value = "/common/ckeditor5Upload.do", method = RequestMethod.POST)
    public void fileUpload(MultipartHttpServletRequest multiRequest, HttpServletRequest request, HttpServletResponse response) {
		try {

			MultipartFile uploadFile = multiRequest.getFile("upload");

			String originalFileName = uploadFile.getOriginalFilename();

			String ext = originalFileName.substring(originalFileName.indexOf("."));

			String newFileName = UUID.randomUUID() + ext;
						
			String cPath = "C:/upload/"; 
			
	    	File saveFolder = new File(cPath);
    		if(!saveFolder.exists()) {
    			saveFolder.mkdirs();
    		}
					
//			String realPath2 = "C:/Users/KGA/jdk11/nobrand/src/main/webapp/resources/goods/";	
//			String realPath2 = "C:/Users/oooon/nobrand/ProjectNoBrand/src/main/webapp/resources/goods/";			
//			String absolutePath = realPath2+ newFileName;

			String savePath = cPath + newFileName;


//			String uploadPath = "http://localhost/nobrand/resources/goods/" + newFileName;
			String uploadPath = "http://localhost/nobrand/upload/" + newFileName;

			File file = new File(savePath);

			uploadFile.transferTo(file);
			JSONObject json = new JSONObject();
			json.put("uploaded", true);
			json.put("url", uploadPath);

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(json.toString());
		} catch (Exception e) {
	    	System.out.println("�삤瑜섎컻�깮");
	    }
	}
}