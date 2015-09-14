package cn.hfut.mam.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.hfut.mam.dto.ParticipantInfo;
import cn.hfut.mam.model.Participant;
import cn.hfut.mam.service.ParticipantService;

import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ZhangXu 2015-4-2 下午4:39:00
 */
public class ParticipantAction extends BaseAction implements
		ModelDriven<ParticipantInfo> {

	private static final long serialVersionUID = -5339266747313318421L;
	private List<Participant> partiList;
	
	
	public List<Participant> getPartiList() {
		return partiList;
	}

	public void setPartiList(List<Participant> partiList) {
		this.partiList = partiList;
	}

	ParticipantInfo participantInfo = new ParticipantInfo();

	@Override
	public ParticipantInfo getModel() {
		return participantInfo;
	}

	private ParticipantService participantService;

	public ParticipantService getParticipantService() {
		return participantService;
	}

	@Autowired
	public void setParticipantService(ParticipantService participantService) {
		this.participantService = participantService;
	}

	public String add() throws Exception {

		String m_email = (String) session.get("email");
		this.participantService.add(m_email, participantInfo);
		return "success";
	}

	public String show() throws Exception {

		String m_email = (String) session.get("email");
		partiList=this.participantService.show(m_email);
		return "success";
	}
	
	public String partiShow() throws Exception {
		boolean isPayed=false;
		if(participantInfo.getIsPayed().equals("true"))
			isPayed=true;
		partiList=this.participantService.showToAdmin(isPayed);
		return "success";
	}
	
	public String pay() throws Exception {
		this.participantService.pay(participantInfo.getId());
		return "success";
	}
	
	
	
	
}
