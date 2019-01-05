package com.lecodi.foru.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import com.lecodi.foru.vo.MachineLearningData;
import com.lecodi.foru.vo.Product;

public interface ProductMapper {
	
	public ArrayList<Product> getProductInfo(int productcode);

	public ArrayList<MachineLearningData> getmachineLearningData(String category);

	public int insert(Product p);
	
	public ArrayList<Product> searchAll(RowBounds rb);

	public ArrayList<Product> selectProduct(HashMap<String, Object> map);

	public int totalCount();
	
	public ArrayList<HashMap<String,Integer>> recomm(String category);
	
	public String recommCloth(String category);
	//추가
	public ArrayList<Product> getList();
	//
}
