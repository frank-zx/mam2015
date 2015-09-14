package cn.hfut.mam.action;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import com.opensymphony.xwork2.ModelDriven;

import cn.hfut.mam.dto.MemberInfo;
import cn.hfut.mam.service.MemberService;
import cn.hfut.mam.utils.MyAuthenticator;

/**
 * @author ZhangXu 2015-3-6 下午10:13:04
 */
public class MemberAction extends BaseAction implements ModelDriven<MemberInfo> {

	private static final long serialVersionUID = -965583866925034307L;
	private MemberService memberService;
	MemberInfo memberInfo = new MemberInfo();

	@Override
	public MemberInfo getModel() {
		return memberInfo;
	}

	public MemberService getMemberService() {
		return memberService;
	}

	@Autowired
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}


	public String register() throws Exception {

		if (memberInfo.getPwd().equals(memberInfo.getPwd2())) {
			if (this.memberService.add(memberInfo) != null) {
				request.put("regSuccess", "注册成功！请登录");
				return "success";
			} else {
				request.put("emailExist", "邮箱已存在，不得重复注册");
				return "fail";
			}
		}
		request.put("pwdError", "密码不一致");
		return "fail";
	}

	public String login() throws Exception {

		Boolean loginResult = this.memberService.login(memberInfo);

		if (loginResult) {
			session.clear();
			session.put("email", memberInfo.getEmail());
			return "success";
		}
		request.put("loginfail", "用户名或密码错误！请重新登录。");
		return "success";

	}

	public String exit() throws Exception {
		session.clear();
		return "success";
	}

	public String modifyPwd() throws Exception {
		if (memberInfo.getPwd().equals(memberInfo.getNewpwd())) {
			request.put("modifyPwd", "原密码与新密码一致");
			return "fail";
		}
		if (memberInfo.getNewpwd().equals(memberInfo.getNewpwd2())) {
			String m_email = (String) session.get("email");
			if (this.memberService.modify(m_email, memberInfo)) {
				request.put("modifyPwd", "密码修改成功,请重新登录");
				session.remove("email");
				return "success";
			} else {
				request.put("modifyPwd", "原密码输入错误");
			}

		} else {
			request.put("modifyPwd", "两次新密码输入不一致");
		}
		return "fail";
	}

	

	public void sentResetPwdCode() throws Exception {
		String email = memberInfo.getEmail();
		if (this.memberService.emailExist(email)) {
			MyAuthenticator myAuthenticator = new MyAuthenticator();
			Random r = new Random();
			Integer code = r.nextInt(89999999) + 10000000;
			myAuthenticator.sendMail(email, code.toString());
			session.clear();
			session.put("email_resetpwd", email);
			session.put("code_resetpwd", code.toString());
			response.getWriter().write("success");
			return;
		}
		response.getWriter().write("emailNotExist");
		return;
	}

	public void verifyCode() throws Exception {
		if (session.get("code_resetpwd").equals(memberInfo.getResetPwdCode())) {
			response.getWriter().write("success");
			return;
		}
		response.getWriter().write("fail");
		return;
	}

	public String resetPwd() throws Exception {
		if (memberInfo.getNewpwd().equals(memberInfo.getNewpwd2())) {
			String m_email = (String) session.get("email_resetpwd");
			this.memberService.resetPwd(m_email, memberInfo.getNewpwd());
			request.put("resetPwd", "密码已重置，请登录");

			return "success";
		}
		request.put("resetPwd", "两次密码输入不一致");
		return "fail";

	}
	
	public String payFees() throws Exception {
		String m_email = (String) session.get("email");
		this.memberService.payFees(m_email,memberInfo);
		request.put("payfees", "缴费记录上传完成");
		return "success";
	}

}
