package cn.hfut.mam.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.AdminDao;
import cn.hfut.mam.dto.AdminInfo;
import cn.hfut.mam.service.AdminService;

/**
 * @author ZhangXu 2015-3-16 下午9:48:41
 */

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	@Autowired
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public Boolean login(AdminInfo adminInfo) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", adminInfo.getName().trim());
		params.put("pwd", adminInfo.getPwd().trim());
		String hql = "from Admin as admin where admin.name=:name and admin.pwd=:pwd";
		if (this.adminDao.get(hql, params) != null)
			return true;
		return false;

	}

}
