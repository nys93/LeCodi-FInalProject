package com.lecodi.foru.dao;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.ItemArrayMapper;
import com.lecodi.foru.vo.ItemArray;

@Repository
public class ItemArrayDAO {
	
	@Autowired
	SqlSession session;

	private static final Logger logger = LoggerFactory.getLogger(ItemArrayDAO.class);
	
	public int insertImagePosition(ItemArray ia){
		int result = 0;
		ItemArrayMapper mapper = session.getMapper(ItemArrayMapper.class);
		try{
			result = mapper.insertImagePosition(ia);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public int getMaxCodinum() {
		// TODO Auto-generated method stub
		int result  = 0;
		ItemArrayMapper mapper = session.getMapper(ItemArrayMapper.class);
		try{
			result = mapper.getMaxCodinum();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
}
