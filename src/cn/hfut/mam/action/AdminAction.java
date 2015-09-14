package cn.hfut.mam.action;

import org.springframework.beans.factory.annotation.Autowired;
import cn.hfut.mam.dto.AdminInfo;
import cn.hfut.mam.service.AdminService;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ZhangXu 2015-3-16 下午9:40:58
 */
public class AdminAction extends BaseAction implements ModelDriven<AdminInfo> {

	private static final long serialVersionUID = -8505143788502355514L;

	AdminInfo adminInfo = new AdminInfo();
	private AdminService adminService;

	@Override
	public AdminInfo getModel() {

		return adminInfo;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	@Autowired
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public String login() throws Exception {

		Boolean loginResult = this.adminService.login(adminInfo);
		if (loginResult) {
			session.put("name", adminInfo.getName().trim());
			return "success";
		}

		request.put("loginfail", "用户名或密码错误！请重新登录。");
		return "fail";

	}
	
	public String exit() throws Exception {
		session.clear();
		return "success";
	}

}
