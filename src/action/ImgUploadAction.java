package action;

import com.opensymphony.xwork2.ActionSupport;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
@Controller
@Scope("request")
public class ImgUploadAction extends ActionSupport
{
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private File upload;
  private String uploadContentType;
  private String uploadFileName;

  public String imgUpload()
    throws IOException
  {
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpServletRequest request = ServletActionContext.getRequest();

    response.setCharacterEncoding("utf-8");
    PrintWriter out = response.getWriter();

    String callback = request.getParameter("CKEditorFuncNum");
    String expandedName = "";
    if ((this.uploadContentType.equals("image/pjpeg")) || 
      (this.uploadContentType.equals("image/jpeg")))
    {
      expandedName = ".jpg";
    } else if ((this.uploadContentType.equals("image/png")) || 
      (this.uploadContentType.equals("image/x-png")))
    {
      expandedName = ".png";
    } else if (this.uploadContentType.equals("image/gif")) {
      expandedName = ".gif";
    } else if (this.uploadContentType.equals("image/bmp")) {
      expandedName = ".bmp";
    } else {
      out.println("<script type=\"text/javascript\">");
      out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + 
        ",''," + "'文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）');");
      out.println("</script>");
      return null;
    }
    if (this.upload.length() > 614400L) {
      out.println("<script type=\"text/javascript\">");
      out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + 
        ",''," + "'文件大小不得大于600k');");
      out.println("</script>");
      return null;
    }

    InputStream is = new FileInputStream(this.upload);

    String uploadPath = ServletActionContext.getServletContext().getRealPath("/uploadimg");
    String fileName = UUID.randomUUID().toString();
    fileName = fileName + expandedName;
    File file = new File(uploadPath);
    if (!file.exists()) {
      file.mkdirs();
    }
    File toFile = new File(uploadPath, fileName);
    OutputStream os = new FileOutputStream(toFile);
    byte[] buffer = new byte[1024];
    int length = 0;
    while ((length = is.read(buffer)) > 0) {
      os.write(buffer, 0, length);
    }
    is.close();
    os.close();
    out.println("<script type=\"text/javascript\">");
    out.println("window.parent.CKEDITOR.tools.callFunction(" + callback + 
      ",'" +  request.getContextPath()+"/uploadimg/" + fileName + "','')");
  
    out.println("</script>");
    return null;
  }

  public File getUpload() {
    return this.upload;
  }

  public void setUpload(File upload) {
    this.upload = upload;
  }

  public String getUploadContentType() {
    return this.uploadContentType;
  }

  public void setUploadContentType(String uploadContentType) {
    this.uploadContentType = uploadContentType;
  }

  public String getUploadFileName() {
    return this.uploadFileName;
  }

  public void setUploadFileName(String uploadFileName) {
    this.uploadFileName = uploadFileName;
  }
}