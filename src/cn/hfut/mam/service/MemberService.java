package cn.hfut.mam.service;

import java.io.Serializable;
import cn.hfut.mam.dto.MemberInfo;
import cn.hfut.mam.model.Member;

/**
 * @author ZhangXu
 * 2015-3-6
 * 下午10:09:21
 */
public interface MemberService {

	/**
	 * @param memberInfo
	 */
	public Serializable add(MemberInfo memberInfo);

	/**
	 * @param memberInfo
	 */
	public Boolean login(MemberInfo memberInfo);

	/**
	 * @param m_email
	 * @param memberInfo
	 */
	public boolean modify(String m_email, MemberInfo memberInfo);

	/**
	 * @param email
	 * @return 
	 */
	public boolean emailExist(String email);

	/**
	 * @param m_email
	 * @param newpwd
	 */
	public void resetPwd(String m_email, String newpwd);
	
	public void payFees(String m_email,MemberInfo memberInfo);

	public Boolean isPay(String email);

	public Member checkFees(String m_email);


}
