package cn.hfut.mam.action;

import java.io.InputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import cn.hfut.mam.dto.PaperInfo;
import cn.hfut.mam.model.Paper;
import cn.hfut.mam.service.PaperService;

/**
 * @author ZhangXu 2015-3-31 下午4:02:24
 */
public class PaperAction extends BaseAction implements ModelDriven<PaperInfo> {

	private static final long serialVersionUID = -63116153970982007L;

	PaperInfo paperInfo = new PaperInfo();

	@Override
	public PaperInfo getModel() {

		return paperInfo;
	}

	private PaperService paperService;
	private List<Paper> paperList;

	public PaperService getPaperService() {
		return paperService;
	}

	@Autowired
	public void setPaperService(PaperService paperService) {
		this.paperService = paperService;
	}

	public List<Paper> getPaperList() {
		return paperList;
	}

	public void setPaperList(List<Paper> paperList) {
		this.paperList = paperList;
	}

	public String upload() throws Exception {
		String documentContentType = paperInfo.getDocumentContentType();
		if (documentContentType
				.equals("application/vnd.openxmlformats-officedocument.wordprocessingml.document")
				|| documentContentType.equals("application/msword")
				|| documentContentType.equals("application/pdf")
				|| documentContentType.equals("application/octet-stream")
				|| documentContentType.equals("application/x-zip-compressed")) {
			String m_email = (String) session.get("email");
			String result = paperService.upload(m_email, paperInfo);
			if (result.equals("success")) {
				return "success";
			}
			request.put("uploadresult", "论文上传失败");
			return "fail";
		}
		request.put("uploadresult", "文件类型不支持");
		return "fail";

	}

	public String show() throws Exception {
		paperList = this.paperService.show();
		return "success";
	}

	public InputStream getDownloadFile() throws Exception {

		// 获取资源路径
		return ServletActionContext.getServletContext().getResourceAsStream(
				paperInfo.getDownloadFileName());

	}

	public String download() throws Exception {

		return "success";
	}
	
	public String yourPaper() throws Exception {
		String m_email = (String) session.get("email");
		paperList = this.paperService.showYourPaper(m_email);
		return "success";
	}

}
