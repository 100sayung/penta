package com.penta.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommonDAO {
    @Autowired
	SqlSession session;

	public int insertDB(CommonVO cvo) throws Exception {
		return session.insert("mapper-common.insertDB", cvo);
	}

	public List<CommonVO> getDBList() throws Exception {
		return session.selectList("mapper-common.getDBList");
	}

	public int updateDB(CommonVO cvo) throws Exception {	
		return session.update("mapper-common.updateDB",cvo);
	}
	
	public int deleteDB(int cidx) throws Exception {
		
		return session.delete("mapper-common.deleteDB", cidx);
	}

	public CommonVO getDBById(int cidx) {
		return session.selectOne("mapper-common.getDBById", cidx);
	}
}
