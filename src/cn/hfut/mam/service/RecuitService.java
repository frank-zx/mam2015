package cn.hfut.mam.service;

import java.io.Serializable;
import java.util.List;

import cn.hfut.mam.dto.RecuitInfo;
import cn.hfut.mam.model.Recuit;

/**
 * @author ZhangXu
 * 2015-3-7
 * 上午9:47:18
 */
public interface RecuitService {
	
	public Serializable addRecuit(RecuitInfo recuitInfo);
	public List<Recuit> showRecuit();
	public Recuit getRecuitContentById(String id);
	
}
