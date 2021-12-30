package com.penta.manager;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerDAO {
	@Autowired
	SqlSession session;

	public int insertDB(ManagerVO vo) throws Exception {
		return session.insert("mapper-manager.insertDB", vo);
	}

	public List<ManagerVO> getDBList() throws Exception {
		return session.selectList("mapper-manager.getDBList");
	}


	public int updateDB(ManagerVO vo) throws Exception {	
		return session.update("mapper-manager.updateDB",vo);
	}
	
	public int deleteDB(int cidx) throws Exception {
		
		return session.delete("mapper-manager.deleteDB", cidx);
	}

	public ManagerVO getDBById(int cidx) {
		return session.selectOne("mapper-manager.getDBById", cidx);
	}
}
