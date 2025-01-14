package com.ict.mypage.service;

import java.util.List;

import com.ict.mypage.dao.OrderListVO;
import com.ict.mypage.dao.PurchaseListVO;
import com.ict.mypage.dao.WishListVO;

public interface MypageService {
	
	//	주문목록
	public List<OrderListVO> getOrderList(String u_idx);
	
	//	3일동안 구매확정 안누르면 delivery_active 값을 1로 업데이트
	public int getDeliveryActive(String order_idx);
	
	//	구매목록
	public List<PurchaseListVO> getPurchaseList(String u_idx);
	
	//	찜목록
	public List<WishListVO> getWishList(String u_idx);
	
	
	
	
	
}
