package com.javaproject.nobrand;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class UploadController {
	@ResponseBody
	@RequestMapping(value = "/common/ckeditor5Upload.do", method = RequestMethod.POST)
	public void fileUpload(MultipartHttpServletRequest multiRequest, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			MultipartFile uploadFile = multiRequest.getFile("upload");

			String originalFileName = uploadFile.getOriginalFilename();
			String ext = originalFileName.substring(originalFileName.indexOf("."));
			String newFileName = UUID.randomUUID() + ext;

			String cPath = "/var/lib/tomcat9/webapps/nobrand/resources/goods/";
//			String cPath = "C:/upload/";
			File saveFolder = new File(cPath);
			if (!saveFolder.exists()) {
				saveFolder.mkdirs();
			}
			String savePath = cPath + newFileName;
			String uploadPath = "/nobrand/upload/" + newFileName;

			File file = new File(savePath);

			uploadFile.transferTo(file);
			JSONObject json = new JSONObject();
			json.put("uploaded", true);
			json.put("url", uploadPath);

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(json.toString());
		} catch (Exception e) {
			System.out.println("upload error");
		}
	}
}
