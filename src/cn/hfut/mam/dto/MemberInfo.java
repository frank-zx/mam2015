package cn.hfut.mam.dto;

import java.io.File;
import java.io.Serializable;
import cn.hfut.mam.utils.Encrypt;

/**
 * @author ZhangXu 2015-3-6 下午10:16:31
 */
public class MemberInfo implements Serializable {

	private static final long serialVersionUID = -7595682776855378747L;

	private String email;
	private String pwd;
	private String pwd2;
	private String newpwd;
	private String newpwd2;
	private String resetPwdCode;
	private Boolean isDiscount;// 是否在优惠时间前缴费
	private int teacherNum;// 缴费老师数
	private int studentNum;// 缴费学生数
	private double fee;// 缴费金额

	private File img;// 缴费转账银行回执单图片
	private String imgFileName;
	private String imgContentType;

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(String imgContentType) {
		this.imgContentType = imgContentType;
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

		if (isDiscount)
			this.fee = teacherNum * 980 + studentNum * 480;
		else
			this.fee = teacherNum * 1280 + studentNum * 580;

		return fee;
	}

	public void setFee(double fee) {

		/*
		 * if (isDiscount) this.fee = teacherNum * 980 + studentNum * 480; else
		 * this.fee = teacherNum*1280+studentNum*580;
		 */

		this.fee = fee;
	}

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = Encrypt.md5AndSha(pwd.trim());
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email.trim();
	}

	public String getPwd2() {
		return pwd2;
	}

	public void setPwd2(String pwd2) {
		this.pwd2 = Encrypt.md5AndSha(pwd2.trim());
	}

	public String getNewpwd() {
		return newpwd;
	}

	public void setNewpwd(String newpwd) {
		this.newpwd = Encrypt.md5AndSha(newpwd.trim());
	}

	public String getNewpwd2() {
		return newpwd2;
	}

	public void setNewpwd2(String newpwd2) {
		this.newpwd2 = Encrypt.md5AndSha(newpwd2.trim());
	}

	public String getResetPwdCode() {
		return resetPwdCode;
	}

	public void setResetPwdCode(String resetPwdCode) {
		this.resetPwdCode = resetPwdCode.trim();
	}

}
