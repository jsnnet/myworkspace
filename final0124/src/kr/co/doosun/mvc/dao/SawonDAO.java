package kr.co.doosun.mvc.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.doosun.mvc.dto.SawonVO;

@Repository
public class SawonDAO {
	@Autowired
	private SqlSession ss;
	
	public List<SawonVO> allSawon(SawonVO vo){
		return ss.selectList("sawon.sawonList", vo);
	}
}
