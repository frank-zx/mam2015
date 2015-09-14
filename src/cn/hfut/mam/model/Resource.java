package cn.hfut.mam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 实体类--资源
 * @author ZhangXu
 * 2015-3-6
 * 下午8:34:39
 */

@Entity
@Table
public class Resource extends BaseEntity {

	private static final long serialVersionUID = -5689455066378213434L;
	
	private String title;
	private String filename;
	private String path;
    
	@Column(nullable=false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
	@Column(nullable=false)
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
    
	@Column(nullable=false)
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
}
