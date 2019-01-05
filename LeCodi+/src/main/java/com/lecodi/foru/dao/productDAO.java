package com.lecodi.foru.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.ProductMapper;
import com.lecodi.foru.vo.MachineLearningData;
import com.lecodi.foru.vo.Product;


@Repository
public class productDAO {

	@Autowired
	SqlSession session;
	
	public ArrayList<Product> getProductInfo(int productcode){
		
		ArrayList<Product> productInfo = new ArrayList<Product>();
		try{
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			productInfo = mapper.getProductInfo(productcode);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return productInfo;
	}

	//異붿쿇
		public ArrayList<HashMap<String,Integer>> recomm(String category){
			ArrayList<HashMap<String,Integer>> recommItem = null;
			try{
				ProductMapper mapper = session.getMapper(ProductMapper.class);
				recommItem = mapper.recomm(category);
			}catch(Exception e){
				e.printStackTrace();
			}
			
			return recommItem;
		}
		//異붿쿇 �궗吏�
		public String recommCloth(String category){
			String imgAddress = null;
			try{
				ProductMapper mapper = session.getMapper(ProductMapper.class);
				imgAddress = mapper.recommCloth(category);
				System.out.println("dao" + imgAddress);
			}catch(Exception e){
				e.printStackTrace();
			}
			return imgAddress;
		}
	
	public int insert(Product p) {
		int result = 0;
		try{
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			result = mapper.insert(p);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	
	
	/*�솴�슜 異붽� 由ъ뒪�듃 媛��졇�삤湲�*/
	public ArrayList<Product> searchAll(int limit, int page){
		ArrayList<Product> productAll = new ArrayList<Product>();
		RowBounds rb = new RowBounds((page-1)*limit,limit);
		try{
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			productAll = mapper.searchAll(rb);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return productAll;
	}

	public ArrayList<Product> select(HashMap<String,Object> map) {
		ArrayList<Product> selectProduct = new ArrayList<Product>();
		try {
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			selectProduct = mapper.selectProduct(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return selectProduct;
	}
	/*�솴�슜 異붽� �걹*/

	
	public int selectTotalCount() {
		int result = 0;
		try{
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			result = mapper.totalCount();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	//추가
	public ArrayList<Product> getList() {
		ArrayList<Product> proList = null;
		try{
			ProductMapper mapper = session.getMapper(ProductMapper.class);
			proList = mapper.getList();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return proList;
	}
	//
}
