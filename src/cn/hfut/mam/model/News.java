package cn.hfut.mam.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 实体类--通知公告
 * 
 * @author ZhangXu 2015-3-6 下午8:30:06
 */

@Entity
@Table
public class News extends BaseEntity {

	private static final long serialVersionUID = 9106659103456758978L;

	private String title;
	private String content;
	private int reviews;

	@Column(nullable = false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(nullable = false, columnDefinition = "INT default 0")
	public int getReviews() {
		return reviews;
	}

	public void setReviews(int reviews) {
		this.reviews = reviews;
	}

	@Column(nullable = false,columnDefinition="TEXT")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
    
	//参数构造器
	public News(String id, String title, Date createDatetime, int reviews) {
		this.setId(id);
		this.title = title;
		this.setCreateDatetime(createDatetime);
		this.reviews = reviews;
	}

	public News() {
		
	}
	
	public News(String title,String content, Date createDatetime) {
		this.title = title;
		this.setCreateDatetime(createDatetime);
		this.content = content;
	}

}
