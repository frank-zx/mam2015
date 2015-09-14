package cn.hfut.mam.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

/**
 * 实体类 - 基类
 * * @author ZhangXu
 * 2015-3-6
 * 下午8:26:21
 */
@MappedSuperclass
public class BaseEntity implements Serializable {

	private static final long serialVersionUID = -6718838800112233445L;

	private String id;// ID
	private Date createDatetime;// 创建时间
	private Date modifyDatetime;// 修改时间

	@Id
	@Column(name="id",length = 40, nullable = false)
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Column(name="createdatetime",nullable=false,updatable = false)
	public Date getCreateDatetime() {
		return createDatetime;
	}

	public void setCreateDatetime(Date date) {
		this.createDatetime = date;
	}
    
	@Column(name="modifydatetime")
	public Date getModifyDatetime() {
		return modifyDatetime;
	}

	public void setModifyDatetime(Date modifyDatetime) {
		this.modifyDatetime = modifyDatetime;
	}
	
	@Override
	public int hashCode() {
		return id == null ? System.identityHashCode(this) : id.hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass().getPackage() != obj.getClass().getPackage()) {
			return false;
		}
		final BaseEntity other = (BaseEntity) obj;
		if (id == null) {
			if (other.getId() != null) {
				return false;
			}
		} else if (!id.equals(other.getId())) {
			return false;
		}
		return true;
	}

}
