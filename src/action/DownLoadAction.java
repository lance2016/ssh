package action;

import java.io.FileInputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Controller
@Scope("request")
public class DownLoadAction extends ActionSupport{
	private static final long serialVersionUID = 1L; 
	private String contentType;//指定下载文件的类型 
	private long contentLength;//指定下载文件的长度限制
	private String contentDisposition;//斤载文件的下载方式, 
	private InputStream inputstream;//指定文件读数据流 private
	private String fileName;

	public String execute()throws Exception{
		contentType="application/octet-stream";
		String name=java.net.URLEncoder.encode(fileName, "UTF-8");
		contentDisposition="attachment;filename="+name;
		ServletContext servletContext=ServletActionContext.getServletContext();
		String fileNamefrom=servletContext.getRealPath("/files/"+fileName);
		System.out.println(fileNamefrom);
		System.out.println("filname   "+fileName);
		inputstream=new FileInputStream(fileNamefrom);
		System.out.println("input     "+inputstream);
		contentLength=inputstream.available();
		return SUCCESS;
		
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	public String getContentDisposition() {
		return contentDisposition;
	}

	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}

	public InputStream getInputstream() {
		return inputstream;
	}

	public void setInputstream(InputStream inputstream) {
		this.inputstream = inputstream;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}
