package cn.hfut.mam.action;

import cn.hfut.mam.dto.EmployerInfo;

import com.opensymphony.xwork2.ModelDriven;

public class EmployerAction extends BaseAction implements ModelDriven<EmployerInfo> {

	private static final long serialVersionUID = -435252554513530001L;
	
	private EmployerInfo ei=new EmployerInfo();
	
	@Override
	public EmployerInfo getModel() {
		return ei;
	}
	
	

}
