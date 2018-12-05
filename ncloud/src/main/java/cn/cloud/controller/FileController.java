package cn.cloud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.cloud.kysq.doc.entity.FileInfo;
import cn.cloud.kysq.doc.service.IFileService;

@Controller
public class FileController {

	@Autowired
	private IFileService fileService;

	@RequestMapping(value = "getFiles.do", method = RequestMethod.GET)
	public String getAllFiles(@RequestParam("path") String path, HttpServletRequest request) {

		List<FileInfo> list = fileService.queryFiles(path);
		//System.out.println(list);
		request.setAttribute("filelist", list);
		return "jstl";
		//return "";
	}
	
	@RequestMapping(value="uploadFile.do")
	public void uploadFile(String teamIDm,String fileName) {
		System.out.println("uploadfile");
		
	}
}
