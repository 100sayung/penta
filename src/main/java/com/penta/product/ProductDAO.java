package com.penta.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	SqlSession session;

	public int insertDB(ProductVO pvo) throws Exception {
		return session.insert("mapper-product.insertDB", pvo);
	}

	public List<ProductVO> getDBList() throws Exception {
		return session.selectList("mapper-product.getDBList");
	}


	public int updateDB(ProductVO pvo) throws Exception {	
		return session.update("mapper-product.updateDB",pvo);
	}
	
	public int deleteDB(int Product) throws Exception {
		
		return session.delete("mapper-product.deleteDB", Product);
	}

	public ProductVO getDBById(int pidx) {
		return session.selectOne("mapper-product.getDBById", pidx);
	}
}
