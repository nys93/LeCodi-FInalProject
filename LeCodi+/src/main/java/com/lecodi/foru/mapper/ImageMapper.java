package com.lecodi.foru.mapper;

import java.util.ArrayList;
import java.util.Map;

import com.lecodi.foru.vo.Image;

public interface ImageMapper {
	void saveImage(Map<String, Object> hmap);

	Map<String, Object> getByteImage(String id);

	ArrayList<Map<String, Object>> selectAllImages(String id);

	int getMax();

	void saveCate(Image i);
	
}
