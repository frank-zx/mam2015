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

import cn.hfut.mam.dao.ResourceDao;
import cn.hfut.mam.model.Resource;
import cn.hfut.mam.service.ResourceService;
import cn.hfut.mam.utils.Encrypt;
import cn.hfut.mam.utils.FileUtil;


/**
 * @author ZhangXu
 * 2015-3-7
 * 下午4:12:16
 */

@Service("resourceService")
public class ResourceServiceImpl implements ResourceService {
	
	private ResourceDao resourceDao;

	@Override
	public String upload(File document,String documentFileName) {
		//documentFileName=StringUtils.replace(documentFileName, " ","+");
		String documentExtensionName=FileUtil.getExtensionName(documentFileName);
		String title=FileUtil.getFileNameNoEx(documentFileName);
		documentFileName=Encrypt.md5(documentFileName+new Date().toString())+"."+documentExtensionName;
		String realpath = ServletActionContext.getServletContext().getRealPath("/documents");
	
		if(document!=null){
			File savefile = new File(new File(realpath),documentFileName);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
				try {
					FileUtils.copyFile(document, savefile);
				} catch (IOException e) {
					e.printStackTrace();
				}
				Resource resource=new Resource();
				resource.setId(UUID.randomUUID().toString());
				resource.setCreateDatetime(new Date());
				resource.setTitle(title);
				resource.setPath("documents/"+documentFileName);
				resource.setFilename(documentFileName);
				
				this.resourceDao.save(resource);
				
		}
		return "success";
	}

	public ResourceDao getResourceDao() {
		return resourceDao;
	}
    
	@Autowired
	public void setResourceDao(ResourceDao resourceDao) {
		this.resourceDao = resourceDao;
	}

	@Override
	public List<Resource> show() {
		List <Resource> list=this.resourceDao.getList("from Resource order by createDatetime desc");
		return list;
	}

	@Override
	public void delete(String id) {
		String hql="from Resource where id='"+id+"'";
		Resource r=this.resourceDao.get(hql);
		this.resourceDao.delete(r);
		
	}

}
