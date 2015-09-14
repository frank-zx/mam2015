package cn.hfut.mam.utils;

import java.io.Serializable;

/**
 * @author ZhangXu
 * 2014-9-24
 * 下午7:29:37
 */
public class Json implements Serializable{
	
	private static final long serialVersionUID = -70138164982859568L;
	private boolean success=false;
	private String msg="";
	private Object obj=null;
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	

}
