package com.ict.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.common.dao.ProductVO;



@Repository
public class MypageDAO {
	
	@Autowired 
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<OrderListVO> getOrderList(String u_idx) {
		try {
			return sqlSessionTemplate.selectList("mypage.orderlist", u_idx);
		} catch (Exception e) {
			System.out.println("getOrderList : " + e);
		}
		return null;
	}
	
	public int getDeliveryActive(String order_idx) {
		try {
			return sqlSessionTemplate.update("mypage.delivery_active", order_idx);
		} catch (Exception e) {
			System.out.println(e);
		}
		return -1;
	}
	
	public List<PurchaseListVO> getPurchaseList(String u_idx) {
		try {
			return sqlSessionTemplate.selectList("mypage.purchaselist", u_idx);
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	public List<WishListVO> getWishList(String u_idx) {
		try {
			return sqlSessionTemplate.selectList("mypage.wishlist", u_idx);
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
	
	
	
	
	
	
	
	
}
