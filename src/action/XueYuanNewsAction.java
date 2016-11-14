package action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import service.IXueYuanNewsService;
import vo.XueYuanNews;
@Controller
@Scope("request")
public class XueYuanNewsAction {
    @Resource
	IXueYuanNewsService XueYuanNewsService;
	XueYuanNews XueYuanNews;
	int id;
	List<XueYuanNews> XueYuanNewsList;

	public XueYuanNews getXueYuanNews() {
		return XueYuanNews;
	}

	public void setXueYuanNews(XueYuanNews XueYuanNews) {
		this.XueYuanNews = XueYuanNews;
	}

	

	public IXueYuanNewsService getXueYuanNewsService() {
		return XueYuanNewsService;
	}

	public void setXueYuanNewsService(IXueYuanNewsService XueYuanNewsService) {
		this.XueYuanNewsService = XueYuanNewsService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<XueYuanNews> getXueYuanNewsList() {
		return XueYuanNewsList;
	}

	public void setXueYuanNewsList(List<XueYuanNews> XueYuanNewsList) {
		this.XueYuanNewsList = XueYuanNewsList;
	}

	public String add() {

		try {
			XueYuanNewsService.add(XueYuanNews);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String update() {

		try {
			XueYuanNewsService.update(XueYuanNews);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String delete() {

		try {
			XueYuanNewsService.delete(id);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String query() {
		try {
			XueYuanNewsList = XueYuanNewsService.query();
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
