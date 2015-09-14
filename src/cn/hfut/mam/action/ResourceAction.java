package cn.hfut.mam.action;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.hfut.mam.model.Resource;
import cn.hfut.mam.service.ResourceService;

/**
 * @author ZhangXu 2015-3-7 下午3:57:52
 */
public class ResourceAction extends BaseAction {

	private static final long serialVersionUID = 5876982891100452823L;
    
	private String id;
	private File document;
	private String documentFileName;
	private String documentContentType;
	private ResourceService resourceService;
	private List<Resource> resourceList;
	private String downloadFileName;

	public File getDocument() {
		return document;
	}

	public void setDocument(File document) {
		this.document = document;
	}

	public String getDocumentFileName() {
		return documentFileName;
	}

	public void setDocumentFileName(String documentFileName) {
		this.documentFileName = documentFileName;
	}

	public String getDocumentContentType() {
		return documentContentType;
	}

	public void setDocumentContentType(String documentContentType) {
		this.documentContentType = documentContentType;

	}

	public ResourceService getResourceService() {
		return resourceService;
	}

	@Autowired
	public void setResourceService(ResourceService resourceService) {
		this.resourceService = resourceService;
	}

	public List<Resource> getResourceList() {
		return resourceList;
	}

	public void setResourceList(List<Resource> resourceList) {
		this.resourceList = resourceList;
	}

	public String getDownloadFileName() {
		return downloadFileName;
	}

	public void setDownloadFileName(String downloadFileName) {
		this.downloadFileName = downloadFileName;
	}

	public InputStream getDownloadFile() throws Exception {

		// 获取资源路径
		return ServletActionContext.getServletContext().getResourceAsStream(
				"documents/" + downloadFileName);

	}

	public String download() throws Exception {

		return "success";
	}

	public String upload() throws Exception {
		System.out.println(documentContentType);
		if (documentContentType
				.equals("application/vnd.openxmlformats-officedocument.wordprocessingml.document")
				|| documentContentType.equals("application/msword")
				|| documentContentType.equals("application/pdf")) {
			String result = resourceService.upload(document, documentFileName);
			if (result.equals("success")) {
				request.put("uploadresult", "资源上传成功");

				return "success";
			}
			request.put("uploadresult", "资源上传失败");
			return "fail";
		}
		request.put("uploadresult", "文件类型不支持");
		return "fail";
	}

	public String show() throws Exception {
		resourceList = this.resourceService.show();
		return "success";
	}
	
	public String delete() throws Exception {
		this.resourceService.delete(id);
		return "success";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
