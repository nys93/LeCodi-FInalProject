package com.lecodi.foru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.CodiTableMapper;
import com.lecodi.foru.vo.CodiTable;
import com.lecodi.foru.vo.ItemArray;

@Repository
public class CodiTableDAO {
	
	@Autowired
	SqlSession session;

	private static final Logger logger = LoggerFactory.getLogger(CodiTableDAO.class);
	
	public int insertImagePosition(CodiTable ia){
		int result = 0;
		CodiTableMapper mapper = session.getMapper(CodiTableMapper.class);
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
		CodiTableMapper mapper = session.getMapper(CodiTableMapper.class);
		try{
			result = mapper.getMaxCodinum();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<CodiTable> getCodi() {
		// TODO Auto-generated method stub
		ArrayList<CodiTable> ia = null;
		CodiTableMapper mapper = session.getMapper(CodiTableMapper.class);
		try{
			ia = mapper.getCodi();
		}catch(Exception e){
			e.printStackTrace();
		}
		return ia;
	}

	public ArrayList<Integer> getCodiList(String id) {
		// TODO Auto-generated method stub
		ArrayList<Integer> list = null;
		CodiTableMapper mapper = session.getMapper(CodiTableMapper.class);
		try{
			list = mapper.getMaxList(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<CodiTable> getCodiView(CodiTable ct) {
		ArrayList<CodiTable> list = null;
		try{
			CodiTableMapper mapper = session.getMapper(CodiTableMapper.class);
			list = mapper.getCodiView(ct);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
}
