package action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import service.IAllContentService;
import vo.AllContent;
@Controller
@Scope("request")
public class AllContentAction {
    @Resource
	IAllContentService AllContentService;
	AllContent AllContent;
	int id;
	List<AllContent> AllContentList;

	public AllContent getAllContent() {
		return AllContent;
	}

	public void setAllContent(AllContent AllContent) {
		this.AllContent = AllContent;
	}

	

	public IAllContentService getAllContentService() {
		return AllContentService;
	}

	public void setAllContentService(IAllContentService AllContentService) {
		this.AllContentService = AllContentService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<AllContent> getAllContentList() {
		return AllContentList;
	}

	public void setAllContentList(List<AllContent> AllContentList) {
		this.AllContentList = AllContentList;
	}

	public String add() {

		try {
			AllContentService.add(AllContent);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String update() {

		try {
			AllContentService.update(AllContent);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String delete() {

		try {
			AllContentService.delete(id);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String query() {
		try {
			AllContentList = AllContentService.query();
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
