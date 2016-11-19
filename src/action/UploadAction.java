package action;

import java.io.File;

import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.IAllContentService;
import service.INavService;
import vo.AllContent;
@SuppressWarnings("serial")
@Controller
@Scope("request")
public class UploadAction extends ActionSupport {
	@Resource
   IAllContentService AllContentService;
	private String name;
	private File photo;
	private String photoFileName;
	private String photoContentType;
	 private AllContent AllContent=new AllContent();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public File getPhoto() {
		return photo;
	}
	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	public String getPhotoContentType() {
		return photoContentType;
	}
	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}
	
	
	public IAllContentService getAllContentService() {
		return AllContentService;
	}
	public void setAllContentService(IAllContentService allContentService) {
		AllContentService = allContentService;
	}
	public String upload() throws IOException{
		
		System.out.println("---------------============="+name+":"+photoFileName+":"+photoContentType);
		String storeDirectory = ServletActionContext.getServletContext().getRealPath("/files");
		FileUtils.copyFile(photo, new File(storeDirectory,photoFileName));
		System.out.println(name+photoContentType+"          "+storeDirectory);
		AllContent.setParentid("K0");
		AllContent.setTitle(photoFileName);
		AllContent.setLink("download.action?filename="+photoFileName);
		AllContentService.add(AllContent);
		
		return "success";
	}
}
