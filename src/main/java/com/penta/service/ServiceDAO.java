package com.penta.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ServiceDAO {
    @Autowired
	SqlSession session;

	public int insertDB(ServiceVO cvo) throws Exception {
		return session.insert("mapper-service.insertDB", cvo);
	}

	public List<ServiceVO> getDBList() throws Exception {
		return session.selectList("mapper-service.getDBList");
	}

	public int updateDB(ServiceVO cvo) throws Exception {	
		return session.update("mapper-service.updateDB",cvo);
	}
	
	public int deleteDB(int cidx) throws Exception {
		
		return session.delete("mapper-service.deleteDB", cidx);
	}

	public ServiceVO getDBById(int cidx) {
		return session.selectOne("mapper-service.getDBById", cidx);
	}
}
