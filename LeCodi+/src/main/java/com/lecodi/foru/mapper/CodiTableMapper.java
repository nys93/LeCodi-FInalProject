package com.lecodi.foru.mapper;

import java.util.ArrayList;

import com.lecodi.foru.vo.CodiTable;


public interface CodiTableMapper {

	int insertImagePosition(CodiTable ia);

	int getMaxCodinum();

	ArrayList<CodiTable> getCodi();

	ArrayList<Integer> getMaxList(String id);

	ArrayList<CodiTable> getCodiView(CodiTable ct);

	

}
