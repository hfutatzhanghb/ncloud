package cn.cloud.kysq.doc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.cloud.kysq.doc.entity.FileBreadCrumb;
import cn.cloud.kysq.doc.entity.FileInfo;
import cn.cloud.kysq.doc.service.FileService;
import cn.cloud.kysq.login.entity.User;
import cn.cloud.kysq.team.entity.Team;

@Controller
@RequestMapping(value = "/doc")
public class FileController {

	@Autowired
	private FileService fileService;

	// 此controller对应根root级的目录和文件请求
	@RequestMapping(value = "/root.do")
	public String getFirstLevelFile(HttpServletRequest request) {
		String teamID =  String.valueOf(((Team)request.getSession().getAttribute("loginteam")).getTeamID());
		List<FileInfo> queryFirstLevelFiles = fileService.queryFirstLevelFiles(teamID);
		request.setAttribute("fileList", queryFirstLevelFiles);
		FileBreadCrumb fileBreadCrumb = new FileBreadCrumb();
		fileBreadCrumb.setIdStr("0");
		fileBreadCrumb.setPathStr("/");
		request.setAttribute("breadcrumb", fileBreadCrumb);
		if (queryFirstLevelFiles == null) {
			System.out.println("root级没有文件");
		}
		return "online-disk";
	}
	//对应创建文件夹的请求
	@RequestMapping(value="createfolder.do",method = RequestMethod.POST)
	public String createFolder(HttpServletRequest request ,@RequestParam("parentID") String parentID, @RequestParam("foldername")String foldername) {
		FileInfo fileInfo = new FileInfo();
		Integer teamID = ((Team)request.getSession().getAttribute("loginteam")).getTeamID();
		String filePath = request.getSession().getServletContext().getRealPath("/WEB-INF/") + teamID+"\\"+foldername;
		fileInfo.setFileName(foldername);
		fileInfo.setFilePath(filePath);
		fileInfo.setFileOwner(((User)request.getSession().getAttribute("user")).getUsername());
		fileInfo.setFileCreateTime(new Date());
		System.out.println(parentID);
		fileService.createFolder(fileInfo, (User)request.getSession().getAttribute("user"),(Team) request.getSession().getAttribute("loginteam"), parentID);
		System.out.println(parentID);
		//return "online-disk";
		return "redirect:/doc/root.do";
	}
	
	@RequestMapping(value = "/getsubfiles.do")
	public String getSubFilesByFileID(HttpServletRequest request, @RequestParam(value = "fileID") String fileID,
			@RequestParam(value = "curPath") String curpath, @RequestParam(value = "pathStr") String pathStr,
			@RequestParam(value = "idStr") String idStr) {

		List<FileInfo> subFiles = fileService.querySubFilesByFileID(fileID);
		FileBreadCrumb fileBreadCrumb = new FileBreadCrumb();

		String newPathStr = pathStr + "," + curpath;
		String newidStr = idStr + "," + fileID;
		fileBreadCrumb.setPathStr(newPathStr);
		fileBreadCrumb.setIdStr(newidStr);
		ArrayList<String> arrayList = new ArrayList<String>();
		String[] split = newPathStr.split(",");
		for (int i = 1; i < split.length; i++) {
			arrayList.add(split[i]);
		}

		request.setAttribute("breadcrumb", fileBreadCrumb);
		request.setAttribute("breadPath", arrayList);
		request.setAttribute("fileList", subFiles);
		if (subFiles == null) {
			System.out.println("该文件夹没有没有子文件");
		}
		return "online-disk";
	}
	
	@RequestMapping(value = "uploadfile.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> uploadfile(HttpServletRequest request, @RequestParam("parentID") String parentID,
			@RequestParam("file") MultipartFile file, @RequestParam("team_id") String teamID) {

		// 以团队名为文件夹单位
		String folderName = teamID;
		// String filePath = FileStorage.getFileRealPath() + folderName;
		String filePath = request.getSession().getServletContext().getRealPath("/WEB-INF/") + folderName;
		System.out.println(filePath);
		File parentPath = new File(filePath);

		if (!parentPath.exists()) {
			parentPath.mkdirs();
		}

		String realpath = parentPath + "\\" + file.getOriginalFilename();
		Long filesize = file.getSize();
		String fileOwner = ((User) request.getSession().getAttribute("user")).getUsername();
		
		Date now = new Date();
		File newFile = new File(realpath);
		try {
			file.transferTo(newFile);
			int uploadFiles = fileService.uploadFiles(file.getOriginalFilename(), fileOwner, filesize, now, 1, teamID,
					realpath, parentID);
			System.out.println(uploadFiles);
			Map<String, Integer> resultmap = new HashMap<String, Integer>();
			resultmap.put("msg", uploadFiles);
			return resultmap;
		} catch (Exception e) {
			e.printStackTrace();
			Map<String, Integer> resultmap = new HashMap<String, Integer>();
			resultmap.put("msg", 0);
			return resultmap;
		}
	}

	@RequestMapping(value="/downloadfile.do", method = RequestMethod.POST)
	public String downloadfile(HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "team_id") String teamID, @RequestParam(value = "filename") String filename)
			throws IOException {
		request. setCharacterEncoding("UTF-8");
		System.out.println(filename.length());
		// 以团队名为文件夹单位
		String folderName = teamID;
		// String filePath = FileStorage.getFileRealPath() + folderName;
		String realDownloadPath = request.getSession().getServletContext().getRealPath("/WEB-INF/") + folderName + "\\"
				+ filename;

		File file = new File(realDownloadPath);
		response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(filename, "UTF-8"));
		FileInputStream in = new FileInputStream(file);
		OutputStream out = response.getOutputStream();
		byte buffer[] = new byte[1024];
		int len = 0;
		// 循环将输入流中的内容读取到缓冲区当中
		while ((len = in.read(buffer)) > 0) {
			// 输出缓冲区的内容到浏览器，实现文件下载
			out.write(buffer, 0, len);
		}
		
		// 关闭文件输入流
		in.close();
		out.flush();
		// 关闭输出流
		out.close();
		return null;
	}
	

	
}
