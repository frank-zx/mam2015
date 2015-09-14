package cn.hfut.mam.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.MemberDao;
import cn.hfut.mam.dao.ParticipantDao;
import cn.hfut.mam.dto.ParticipantInfo;
import cn.hfut.mam.model.Member;
import cn.hfut.mam.model.Participant;
import cn.hfut.mam.service.ParticipantService;


/**
 * @author ZhangXu
 * 2015-4-2
 * 下午4:53:55
 */

@Service("participantService")
public class ParticipantServiceImpl implements ParticipantService {
	
	private ParticipantDao participantDao;
	private MemberDao memberDao;

	public ParticipantDao getParticipantDao() {
		return participantDao;
	}
    
	@Autowired
	public void setParticipantDao(ParticipantDao participantDao) {
		this.participantDao = participantDao;
	}

	@Override
	public void add(String m_email, ParticipantInfo participantInfo) {
		Participant p=new Participant();
		p.setCreateDatetime(new Date());
		p.setId(UUID.randomUUID().toString());
		p.setTel(participantInfo.getTel());
		p.setRealname(participantInfo.getRealname());
		p.setOrganization(participantInfo.getOrganization());
		p.setStudent(participantInfo.getIsStudent());
		p.setPayed(false);
		p.setEmail(participantInfo.getEmail());
		Member m=this.memberDao.get("from Member where email='"+m_email+"'");
		p.setMember(m);
		
		this.participantDao.save(p);
		
	}

	public MemberDao getMemberDao() {
		return memberDao;
	}
    
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public List<Participant> show(String m_email) {
		Member m=this.memberDao.get("from Member where email='"+m_email+"'");
		String id=m.getId();
		List<Participant> partiList=this.participantDao.getList("from Participant where member_id='"+id+"'");
		return partiList;
	}

	@Override
	public List<Participant> showToAdmin(boolean isPayed) {
		List<Participant> partiList=this.participantDao.getList("from Participant where Payed="+isPayed);
		return partiList;
		
	}

	@Override
	public void pay(String id) {
		String hql="from Participant where id='"+id+"'";
		Participant p=this.participantDao.get(hql);
		p.setPayed(true);
		
		
	}

	
	
		
	

}
