package cn.hfut.mam.service;

import java.util.List;

import cn.hfut.mam.dto.ParticipantInfo;
import cn.hfut.mam.model.Participant;

/**
 * @author ZhangXu
 * 2015-4-2
 * 下午4:53:22
 */
public interface ParticipantService {

	/**
	 * @param m_email
	 * @param participantInfo
	 */
	public void add(String m_email, ParticipantInfo participantInfo);

	public List<Participant> show(String m_email);

	public List<Participant> showToAdmin(boolean isPayed);

	/**
	 * @param m_email
	 */
	public void pay(String m_email);
	


}
