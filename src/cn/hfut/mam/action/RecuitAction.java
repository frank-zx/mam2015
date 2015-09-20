package cn.hfut.mam.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.hfut.mam.dto.RecuitInfo;
import cn.hfut.mam.model.Recuit;
import cn.hfut.mam.service.RecuitService;

import com.opensymphony.xwork2.ModelDriven;

public class RecuitAction extends BaseAction implements ModelDriven<RecuitInfo> {

	private static final long serialVersionUID = -435252554513530001L;

	private RecuitInfo ri = new RecuitInfo();

	@Override
	public RecuitInfo getModel() {
		return ri;
	}

	private List<Recuit> recuitList;
	private Recuit recuit;
	private String id;

	public List<Recuit> getRecuitList() {
		return recuitList;
	}

	public void setRecuitList(List<Recuit> recuitList) {
		this.recuitList = recuitList;
	}

	public Recuit getRecuit() {
		return recuit;
	}

	public void setRecuit(Recuit recuit) {
		this.recuit = recuit;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public RecuitService getRecuitService() {
		return recuitService;
	}

	@Autowired
	public void setRecuitService(RecuitService recuitService) {
		this.recuitService = recuitService;
	}

	private RecuitService recuitService;

	public String addRecuit() throws Exception {

		this.recuitService.addRecuit(ri);
		request.put("message", "添加新招聘信息成功");
		
		return "success";
	}

	public String showRecuit() throws Exception {

		recuitList = this.recuitService.showRecuit();

		return "success";

	}

	public String recuitContent() throws Exception {

		recuit = this.recuitService.getRecuitContentById(id);
		return "success";

	}

}
