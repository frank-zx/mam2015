package cn.hfut.mam.dto;

import java.io.Serializable;

/**
 * @author ZhangXu
 * 2015-3-7
 * 上午9:46:41
 */
public class NewsInfo implements Serializable {

	private static final long serialVersionUID = -8739398498682884241L;
	
	private String id;
	private String title;
	private String content;
    
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
