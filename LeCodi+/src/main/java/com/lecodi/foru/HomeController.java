package com.lecodi.foru;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lecodi.foru.vo.Cart;
import com.lecodi.foru.dao.productDAO;
import com.lecodi.foru.util.PageNavigator;
import com.lecodi.foru.vo.MachineLearningData;
import com.lecodi.foru.vo.Product;

@Controller
public class HomeController {

	@Autowired
	productDAO productDAO;
	
	private final int LIMIT = 60;
	private final int PAGES = 5;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*�솴�슜異붽��떆�옉 硫붿씤�뿉 �긽�뭹 �떎�룜湲�*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		ArrayList<Product> productAll = new ArrayList<Product>();
		
		int totalCount = productDAO.selectTotalCount();
		PageNavigator navi = new PageNavigator(LIMIT, PAGES, page, totalCount);
		model.addAttribute("navi", navi);

		try {
			productAll = productDAO.searchAll(LIMIT, page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("product", productAll);
		
		return "main";
	}
	
	
	/**
	 * �럹�씠吏� 泥섎━�슜 硫붿씤
	 * 吏��슦硫� �븞�맖
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Locale locale, Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		ArrayList<Product> productAll = new ArrayList<Product>();
		
		int totalCount = productDAO.selectTotalCount();
		PageNavigator navi = new PageNavigator(LIMIT, PAGES, page, totalCount);
		model.addAttribute("navi", navi);

		try {
			productAll = productDAO.searchAll(LIMIT, page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("product", productAll);
		
		return "main";
	}
	
	
	// �솴�슜 異붽� �떆�옉 - �뿉�씠�젥�뒪濡� �봽濡쒕뜒�듃 ���젆�듃�븯湲�
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "select", method = RequestMethod.POST)
	@ResponseBody
	public JSONObject select(Locale locale, Model model,HttpServletRequest request) {
		
	    HashMap<String, Object> map = new HashMap<String, Object>();
		ArrayList<String> arr2 = new ArrayList<String>();

		if(!(request.getParameter("addList").equals("[]"))){

			String param = request.getParameter("addList");
			int last = param.length();
			param = param.substring(1, last-1);
			
			String[] arr = param.split(",");
			int num = arr.length;
			
			for (int i=0 ; i<num; i++) {
				int size = arr[i].length();
				arr[i]=arr[i].substring(1, size-1);
				System.out.println(arr[i]);
				arr2.add(arr[i]);
				System.out.println(arr2);

				map.put("x", arr2);
				System.out.println("arr2"+arr2);
		    
			}
			}else{
				arr2.add("noCloth");
				map.put("x", null);
			}
			
	    
	    
	    String param1="noprice";
	    
	    if(!(request.getParameter("priceList").equals("[]"))){
			param1 = request.getParameter("priceList");
			int last1 = param1.length();
			param1 = param1.substring(2, last1-2);
		}else{
		    param1="noprice";
		}
	    System.out.println(param1);
		map.put("price", param1);

	    ArrayList<Product> selectProduct= null;
		try {
			selectProduct = productDAO.select(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("product", selectProduct);
		System.out.println("**final**"+selectProduct);
		//JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = new JSONObject();
        
        jsonObject.put("selectProduct", selectProduct);
        System.out.println("�젣�씠�뒯�샃�젥"+jsonObject);
        String str = jsonObject.toString();
        System.out.println("�닾�뒪�듃留�"+str);

		return jsonObject;
	}
	/*�솴�슜異붽��걹*/

	
	/**
	 * GPS濡� �씠�룞
	 */
	@RequestMapping(value = "GPS", method = RequestMethod.GET)
	public String goGPS(){
		return "other/GPS2";
	}
	
	
	//�긽�꽭�럹�씠吏� �씠�룞
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public String product1(Product product, Model model, int productcode,String cloth_category){
		ArrayList<Product> productInfo=new ArrayList<Product>();
		try{
			productInfo = productDAO.getProductInfo(productcode);
		}catch(Exception e){
			e.printStackTrace();
		}
		model.addAttribute("productInfo",productInfo);
		model.addAttribute("productcode", productcode);
		model.addAttribute("cloth_category",cloth_category);
		return "other/product";
	}
	//�긽�꽭�럹�씠吏��뿉�꽌�쓽 李⑦듃(�넀�븰�닔)
			@RequestMapping(value = "recomm", method = RequestMethod.POST)
			@ResponseBody
			public JSONArray product2(Model model, String cloth_category){
				ArrayList<HashMap<String,Integer>> resultObj=null;
				String category = cloth_category;
				JSONArray resultList = new JSONArray();
				try{
					resultObj = productDAO.recomm(category);
					for(HashMap h : resultObj){
						JSONObject obj = new JSONObject();
						obj.put("ITEM", h.get("ITEM"));
						obj.put("VALUE", h.get("VALUE"));
						resultList.add(obj);
						System.out.println(h);
					}

				}catch(Exception e){
					e.printStackTrace();
				}
				
				return resultList;
			}
			
			//�긽�꽭�럹�씠吏� 異붿쿇�씠誘몄�(�넀�븰�닔)
			@RequestMapping(value = "showImg1",method = RequestMethod.POST)
			@ResponseBody
				public String showImg(String category){
					String img = "";
					try{
						System.out.println(img);
						img = productDAO.recommCloth(category);
						System.out.println(img);
					}catch(Exception e){
						e.printStackTrace();
					}
					return img;
				}
	
}
