package cn.hfut.mam.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.MemberDao;
import cn.hfut.mam.dao.PaperDao;
import cn.hfut.mam.dto.MemberInfo;
import cn.hfut.mam.model.Member;
import cn.hfut.mam.service.MemberService;

/**
 * @author ZhangXu 2015-3-6 下午10:09:49
 */

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;
	private PaperDao paperDao;

	public MemberDao getMemberDao() {
		return memberDao;
	}

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public PaperDao getPaperDao() {
		return paperDao;
	}

	@Autowired
	public void setPaperDao(PaperDao paperDao) {
		this.paperDao = paperDao;
	}

	@Override
	public Serializable add(MemberInfo memberInfo) {

		if (this.emailExist(memberInfo.getEmail()))
			return null;
		Member member = new Member();
		member.setEmail(memberInfo.getEmail());
		member.setPwd(memberInfo.getPwd());
		member.setId(UUID.randomUUID().toString());
		member.setCreateDatetime(new Date());
		return this.memberDao.save(member);
	}

	@Override
	public Boolean login(MemberInfo memberInfo) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("email", memberInfo.getEmail());
		params.put("pwd", memberInfo.getPwd());
		String hql = "from Member where email=:email and pwd=:pwd";
		if (this.memberDao.get(hql, params) != null)
			return true;
		return false;

	}

	@Override
	public boolean modify(String m_email, MemberInfo memberInfo) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("email", m_email);
		params.put("pwd", memberInfo.getPwd());
		String hql = "from Member where email=:email and pwd=:pwd";
		Member m = this.memberDao.get(hql, params);
		if (m != null) {
			m.setPwd(memberInfo.getNewpwd());
			return true;
		}
		return false;
	}

	@Override
	public boolean emailExist(String email) {
		if (this.memberDao.get("from Member where email='" + email + "'") != null)
			return true;
		return false;
	}

	@Override
	public void resetPwd(String m_email, String newpwd) {
		String hql = "from Member where email='" + m_email + "'";
		Member m = this.memberDao.get(hql);
		if (m != null) {
			m.setPwd(newpwd);
		}

	}

	@Override
	public void payFees(String m_email, MemberInfo memberInfo) {
		Boolean isDiscount = memberInfo.getIsDiscount();
		int teacherNum = memberInfo.getTeacherNum();
		int studentNum = memberInfo.getStudentNum();
		double fee = memberInfo.getFee();

		String imgFileName = m_email + ".jpg";
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/jiaofeiimg");

		if (memberInfo.getImg() != null) {
			File savefile = new File(new File(realpath), imgFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			try {
				FileUtils.copyFile(memberInfo.getImg(), savefile);
			} catch (IOException e) {
				e.printStackTrace();
			}
			Member m = this.memberDao.get("from Member where email='" + m_email
					+ "'");
			m.setIsDiscount(isDiscount);
			m.setStudentNum(studentNum);
			m.setTeacherNum(teacherNum);
			m.setFee(fee);
			m.setPath("jiaofeiimg/" + imgFileName);

		}

	}

	@Override
	public Boolean isPay(String email) {
		Member m = this.memberDao
				.get("from Member where email='" + email + "'");
		if (m.getIsDiscount() != null)
			return true;
		return false;
	}

	@Override
	public Member checkFees(String m_email) {
		Member m = this.memberDao
				.get("from Member where email='" + m_email + "'");
		return m;
	}

}
