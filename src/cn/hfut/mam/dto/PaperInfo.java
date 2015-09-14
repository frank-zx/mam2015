package cn.hfut.mam.dto;

import java.io.File;
import java.io.Serializable;


/**
 * @author ZhangXu
 * 2015-3-31
 * 下午4:03:25
 */
public class PaperInfo implements Serializable {

	private static final long serialVersionUID = 2487680895314129299L;
	
	private String title;
	private String author;
	private Boolean cnki;
	private Boolean wanfang;
	private String tel;
	private String organization;
	private String email;
	private File document;
	private String documentFileName;
	private String documentContentType;
	private String downloadFileName;
	private String topic;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Boolean getCnki() {
		return cnki;
	}

	public void setCnki(Boolean cnki) {
		this.cnki = cnki;
	}

	public Boolean getWanfang() {
		return wanfang;
	}

	public void setWanfang(Boolean wanfang) {
		this.wanfang = wanfang;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	public String getDownloadFileName() {
		return downloadFileName;
	}

	public void setDownloadFileName(String downloadFileName) {
		this.downloadFileName = downloadFileName;
	}

	public String getDocumentContentType() {
		return documentContentType;
	}

	public void setDocumentContentType(String documentContentType) {
		this.documentContentType = documentContentType;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

}
