package com.lecodi.foru.controller;


import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.lecodi.foru.dao.CodiTableDAO;
import com.lecodi.foru.dao.ImageDAO;
import com.lecodi.foru.dao.productDAO;
import com.lecodi.foru.vo.Codi;
import com.lecodi.foru.vo.CodiTable;
import com.lecodi.foru.vo.Image;
import com.lecodi.foru.vo.ItemArray;
import com.lecodi.foru.vo.Product;

@Controller
public class ImageController {
	
	@Autowired
	private ImageDAO dao;
	
	@Autowired
	private CodiTableDAO idao;
	
	//추가시작
	@Autowired
	private productDAO prodao;
	//추가 끝
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@RequestMapping(value ="/formFile", method = RequestMethod.GET)
	public String formFile(){
		logger.info("여기까지");
		return "formFile";
	}
	
    /**
	 * 코디 페이지로 이동
	 * @return codiTool
	 */
	@RequestMapping(value = "codi", method = RequestMethod.GET)
	public String codiTool(Model model, HttpSession session){
		String id = (String) session.getAttribute("loginId");
		logger.debug(id);
	/*	ArrayList<Image> images = dao.selectAllImages(id);*/ 
		ArrayList<Map<String, Object>> images = dao.selectAllImages(id);
		System.out.println(images);
		model.addAttribute("images", images);
		
		//추가 시작
		ArrayList<Product> productList = prodao.getList();
		model.addAttribute("productList", productList);
		//추가 끝
		return "codiTool";
	}
		
	@RequestMapping(value ="saveImage", method = RequestMethod.POST)
	public String saveImage(@RequestParam("uploadImage") MultipartFile file, HttpSession session, HttpServletRequest request, String cloth_category) throws IOException {
		//System.out.println(cloth_category);
		String id = (String) session.getAttribute("loginId");
		String filePath = "";
		if (!file.isEmpty()) {
                String uploadsDir = "/uploads/";
                String realPathtoUploads =  request.getServletContext().getRealPath(uploadsDir);
   
                if(! new File(realPathtoUploads).exists()) {
                    new File(realPathtoUploads).mkdir();
                }
                logger.info("realPathtoUploads = {}", realPathtoUploads);

                String orgName = file.getOriginalFilename();
                filePath = realPathtoUploads + orgName;
                File dest = new File(filePath);
                file.transferTo(dest);
            
            	Map<String, Object> hmap = new HashMap<String, Object>();
    			hmap.put("userid", id);
    			hmap.put("img_path", filePath);
    			dao.saveImage(hmap);
    			int max = dao.getMax(); //카테고리 저장 위해 최대값
    			Image i = new Image();
    			i.setId(max);
    			i.setCloth_category(cloth_category);
    			dao.saveCate(i);
		}

		return "redirect:/codi";
	}
	
	@RequestMapping(value ="/view")
	public String view(){
		return "view";
	}
	
	@RequestMapping(value="getByteImage", method = RequestMethod.GET)
	public void getByteImage(HttpSession session, HttpServletResponse response, Model model, String str) throws IOException, SQLException {
	
		String id = (String) session.getAttribute("loginId");
		Map<String, Object> map = dao.getByteImage(str);
		byte[] imageByteArray = Files.readAllBytes(new File((String) map.get("IMG_PATH")).toPath());
		
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		InputStream is = new ByteArrayInputStream(imageByteArray);
		IOUtils.copy(is, response.getOutputStream());
	}
	
	@RequestMapping(value ="/backgroundRemoval", method = RequestMethod.GET)
	public String backgroundRemoval(){
		
		return "backgroundRemoval";
	}
	
	@ResponseBody
	@RequestMapping(value ="/saveEditedImage", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String saveEditedImage(@RequestBody String codi, HttpSession session){
		
		String id = (String) session.getAttribute("loginId");
		
		Gson gson = new Gson();
		
		Codi cd = gson.fromJson(codi, Codi.class);
		
		int maxCodinum = idao.getMaxCodinum();
		
		/*cd.setUserid(id);
		cd.setCodiName(maxCodinum);*/
		
		System.out.println("맥스값을 받아올수있나여" + maxCodinum);
		System.out.println(cd.getItemArray().get(0).getHeight());
		
		for (int i = 0; i < cd.getItemArray().size(); i++) {
			
			CodiTable codiTable = new CodiTable();
			codiTable.setCodiname(maxCodinum+1);
			codiTable.setUserid(id);
			codiTable.setHeight(cd.getItemArray().get(i).getHeight());
			codiTable.setLeftitem(cd.getItemArray().get(i).getLeftItem());
			codiTable.setWidth(cd.getItemArray().get(i).getWidth());
			codiTable.setSrc(cd.getItemArray().get(i).getSrc());
			codiTable.setTop(cd.getItemArray().get(i).getTop());
		
			idao.insertImagePosition(codiTable);
		}
		return "성공";
	}
	
	@RequestMapping(value="/codiBookList", method = RequestMethod.GET)
	public String codiBookList(Model model, HttpSession session){
		
		String id = (String) session.getAttribute("loginId");
		ArrayList<Integer> codiname = idao.getCodiList(id);
		for(Integer i : codiname){
			System.out.println(i.intValue());
		}
		model.addAttribute("codiname", codiname);
		
		return "codiBookList";
	}
	
	
	@RequestMapping(value="view", method = RequestMethod.GET)
	public String viewCodi(HttpSession session, Model model, int codiname){
		
		String id = (String) session.getAttribute("loginId");
		CodiTable ct = new CodiTable();
		ct.setUserid(id);
		ct.setCodiname(codiname);
		
		ArrayList<CodiTable> co = idao.getCodiView(ct);
		ArrayList<ItemArray> it = new ArrayList<ItemArray>();
		
		for(CodiTable c : co){
			ItemArray i = new ItemArray();
			i.setHeight(c.getHeight());
			i.setLeftItem(c.getLeftitem());
			i.setSrc(c.getSrc());
			i.setTop(c.getTop());
			i.setWidth(c.getWidth());
			it.add(i);
		}
		model.addAttribute("codiSet", it);
		return "viewCodi";
	}
	
	/*@RequestMapping(value="/codiBook", method = RequestMethod.POST)
	public String codiBook(Model model){
		ArrayList<ItemArray> ia = idao.getCodi();
		
		for (ItemArray iaDetail : ia) {
			System.out.println(iaDetail);
		}
		
		
		return "codiBook";
	}*/
	
	
}
