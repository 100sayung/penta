package com.penta.penta;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PentaDAO {
    @Autowired
	SqlSession session;

	public int insertDB(PentaVO cvo) throws Exception {
		return session.insert("mapper-penta.insertDB", cvo);
	}

	public List<PentaVO> getDBList() throws Exception {
		return session.selectList("mapper-penta.getDBList");
	}

	public int updateDB(PentaVO cvo) throws Exception {	
		return session.update("mapper-penta.updateDB",cvo);
	}
	
	public int deleteDB(int pIndex) throws Exception {
		
		return session.delete("mapper-penta.deleteDB", pIndex);
	}

	public PentaVO getDBById(int pIndex) {
		return session.selectOne("mapper-penta.getDBById", pIndex);
	}
}
