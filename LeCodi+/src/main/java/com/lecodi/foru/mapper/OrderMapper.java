package com.lecodi.foru.mapper;

import java.util.ArrayList;

import com.lecodi.foru.vo.Tbl_order;

public interface OrderMapper {

	int insertOrder(Tbl_order order);

	ArrayList<Tbl_order> getOrderList(String userid);

	ArrayList<Integer> getTotalprice(String userid);

	/*Tbl_order getOrderDetail1(int productcode1);

	Tbl_order getOrderDetail2(int productcode2);

	Tbl_order getOrderDetail3(int productcode3);

	Tbl_order getOrderDetail4(int productcode4);

	Tbl_order getOrderDetail5(int productcode5);*/

}
