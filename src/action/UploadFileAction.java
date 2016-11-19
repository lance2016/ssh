package action;



import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@SuppressWarnings("serial")
@Controller
@Scope("request")
public class UploadFileAction extends ActionSupport
{
  private File uploadFile;
  private String uploadFileContentType;
  private String uploadFileName;
  private String message;
  private String id;
  private String title;
  private String author;
  private String content;


  public File getUploadFile()
  {
    return this.uploadFile;
  }

  public void setUploadFile(File uploadFile) {
    this.uploadFile = uploadFile;
  }

  public String getUploadFileContentType() {
    return this.uploadFileContentType;
  }

  public void setUploadFileContentType(String uploadFileContentType) {
    this.uploadFileContentType = uploadFileContentType;
  }

  public String getUploadFileName() {
    return this.uploadFileName;
  }

  public void setUploadFileName(String uploadFileName) {
    this.uploadFileName = uploadFileName;
  }
  public String getMessage() {
    return this.message;
  }

  public void setMessage(String message) {
    this.message = message;
  }
  public String getId() {
    return this.id;
  }

  public void setId(String id) {
    this.id = id;
  }
  public String getTitle() {
    return this.title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getAuthor() {
    return this.author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public String getContent() {
    return this.content;
  }

  public void setContent(String content) {
    this.content = content;
  }
 

  public String upload() throws Exception {
    HttpServletResponse response = ServletActionContext.getResponse();
    response.setHeader("Access-Control-Allow-Origin", "*");
    String realpath = ServletActionContext.getServletContext().getRealPath("/img");
    System.out.println("--------------------"+realpath);
    File dir = new File(realpath);
    if (!dir.exists()) {
      dir.mkdir();
    }
    if (this.uploadFile.length() > 2048000L) {
      this.message = "图片太大,请选择小于2000K的图片";
      return "success";
    }
    if (this.uploadFileContentType.equals("image/jpeg")) {
      this.uploadFileContentType = ".jpg";
    }
    this.uploadFileName = (this.id + this.uploadFileContentType);
    FileUtils.copyFile(this.uploadFile, new File(dir, this.uploadFileName));
    this.message = "上传成功";
    return "success";
  }
  
  
  
  public String txUpload() throws Exception {
	    HttpServletResponse response = ServletActionContext.getResponse();
	    response.setHeader("Access-Control-Allow-Origin", "*");
	    String realpath = ServletActionContext.getServletContext().getRealPath("/img/tx");
	    File dir = new File(realpath);
	    if (!dir.exists()) {
	      dir.mkdir();
	    }
	    if (this.uploadFile.length() > 5120000L) {
	      this.message = "图片太大,请选择小于50K的图片";
	      return "success";
	    }
	    if (this.uploadFileContentType.equals("image/jpeg")) {
	      this.uploadFileContentType = ".jpg";
	    }
	    if ((this.title.equals("".trim())) || (this.author.equals("".trim()))) {
	      this.message = "发布失败";
	      return "success";
	    }
	    this.uploadFileName = (UUID.randomUUID().toString() + this.uploadFileContentType);
	    FileUtils.copyFile(this.uploadFile, new File(dir, this.uploadFileName));
	   
	    this.message = "上传成功";
	    return "success";
	  }

}