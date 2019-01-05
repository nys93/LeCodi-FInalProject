package com.lecodi.foru.dao;


import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.ImageMapper;
import com.lecodi.foru.vo.Image;
@Repository
public class ImageDAO {
	@Autowired
	private SqlSession sqlsession;
	
	public void saveImage(Map<String, Object> hmap){
	
			ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
			
			try{
				System.out.println("enters"+hmap);
			mapper.saveImage(hmap);
				
   		}catch(Exception e) {
			e.printStackTrace();
			
		}
						
		}
	
	public Map<String, Object> getByteImage(String id) {
		// TODO Auto-generated method stub
		
		ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
		Map<String, Object> getByteImage = null;
		
		try{
			getByteImage = mapper.getByteImage(id);
		
		} catch(Exception e){
			e.printStackTrace();
		}
		return getByteImage;
		
	}
	
	public ArrayList<Map<String, Object>> selectAllImages(String id) {
		// TODO Auto-generated method stub
		
		ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
		ArrayList<Map<String, Object>> selectAllImages = null;
		try{
			selectAllImages = mapper.selectAllImages(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return selectAllImages;
	}

	public int getMax() {
		int result = 0;
		try{
			ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
			result = mapper.getMax();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public void saveCate(Image i) {
		try{
			ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
			mapper.saveCate(i);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
/*	public ArrayList<Image> selectAllImages(String id) {
		// TODO Auto-generated method stub
		
		ImageMapper mapper = sqlsession.getMapper(ImageMapper.class);
		ArrayList<Image> selectAllImages = null;
		try{
			selectAllImages = mapper.selectAllImages(id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return selectAllImages;
	}*/
	
}
