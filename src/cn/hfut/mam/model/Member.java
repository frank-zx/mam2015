package cn.hfut.mam.model;


import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * 实体类--注册用户
 *  * @author ZhangXu 2015-3-6 下午8:21:52
 */

@Entity
public class Member extends BaseEntity {

	private static final long serialVersionUID = -8130326038034723885L;

	private String email;
	private String pwd;
	private Boolean isDiscount;//是否在优惠时间前缴费
	private int teacherNum;//缴费老师数
	private int studentNum;//缴费学生数
	private double fee;//缴费金额
	private String path;//图片存放路径
	
    
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Boolean getIsDiscount() {
		return isDiscount;
	}

	public void setIsDiscount(Boolean isDiscount) {
		this.isDiscount = isDiscount;
	}

	public int getTeacherNum() {
		return teacherNum;
	}

	public void setTeacherNum(int teacherNum) {
		this.teacherNum = teacherNum;
	}

	public int getStudentNum() {
		return studentNum;
	}

	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}

	public double getFee() {
		return fee;
	}

	public void setFee(double fee) {
		this.fee = fee;
	}

	@Column(nullable=false,length=40)
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
    
	@Column(nullable=false,length=100)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
    
	
}
