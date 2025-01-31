package com.ict.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.mypage.dao.MypageDAO;
import com.ict.mypage.dao.OrderListVO;
import com.ict.mypage.dao.PurchaseListVO;
import com.ict.mypage.dao.WishListVO;

@Service
public class MypageServiceIple implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;
	
	@Override
	public List<OrderListVO> getOrderList(String u_idx) {
		return mypageDAO.getOrderList(u_idx);
	}
	
	@Override
	public int getDeliveryActive(String order_idx) {
		return mypageDAO.getDeliveryActive(order_idx);
	}
	
	@Override
	public List<PurchaseListVO> getPurchaseList(String u_idx) {
		return mypageDAO.getPurchaseList(u_idx);
	}
	
	@Override
	public List<WishListVO> getWishList(String u_idx) {
		return mypageDAO.getWishList(u_idx);
	}
	
	
	
	
	
	
	
}
