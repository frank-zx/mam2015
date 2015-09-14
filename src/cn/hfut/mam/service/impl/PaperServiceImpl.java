package cn.hfut.mam.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hfut.mam.dao.MemberDao;
import cn.hfut.mam.dao.PaperDao;
import cn.hfut.mam.dto.PaperInfo;
import cn.hfut.mam.model.Member;
import cn.hfut.mam.model.Paper;
import cn.hfut.mam.service.PaperService;
import cn.hfut.mam.utils.Encrypt;
import cn.hfut.mam.utils.FileUtil;

/**
 * @author ZhangXu 2015-3-31 下午6:34:56
 */
@Service
public class PaperServiceImpl implements PaperService {

	private PaperDao paperDao;
	private MemberDao memberDao;

	@Override
	public List<Paper> show() {

		List<Paper> list = this.paperDao
				.getList("from Paper order by createDatetime desc");
		return list;
	}

	@Override
	public String upload(String m_email, PaperInfo paperInfo) {
		String documentFileName = paperInfo.getDocumentFileName();
		String documentExtensionName = FileUtil
				.getExtensionName(documentFileName);

		documentFileName = Encrypt
				.md5(documentFileName + new Date().toString())
				+ "."
				+ documentExtensionName;
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/papers");

		if (paperInfo.getDocument() != null) {
			File savefile = new File(new File(realpath), documentFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			try {
				FileUtils.copyFile(paperInfo.getDocument(), savefile);
			} catch (IOException e) {
				e.printStackTrace();
			}
			Member m = this.memberDao.get("from Member where email='" + m_email
					+ "'");
			Paper paper = new Paper();
			paper.setId(UUID.randomUUID().toString());
			paper.setTitle(paperInfo.getTitle());
			paper.setAuthor(paperInfo.getAuthor());
			paper.setTel(paperInfo.getTel());
			paper.setOrganization(paperInfo.getOrganization());
			paper.setEmail(paperInfo.getEmail());
			paper.setTopic(paperInfo.getTopic());
			paper.setWanfang(paperInfo.getWanfang());
			paper.setCnki(paperInfo.getCnki());
			paper.setAccepted(false);
			paper.setCheckStatus("未审核");
			paper.setMember(m);
			paper.setCreateDatetime(new Date());
			paper.setPath("papers/" + documentFileName);

			this.paperDao.save(paper);

		}
		return "success";
	}

	public PaperDao getPaperDao() {
		return paperDao;
	}

	@Autowired
	public void setPaperDao(PaperDao paperDao) {
		this.paperDao = paperDao;
	}

	public MemberDao getMemberDao() {
		return memberDao;
	}

	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
    
	
	@Override
	public List<Paper> showYourPaper(String m_email) {
		Member m=this.memberDao.get("from Member where email='"+m_email+"'");
		String id=m.getId();
		List<Paper> paperList=this.paperDao.getList("from Paper where member_id='"+id+"'");
		return paperList;
	}
}
