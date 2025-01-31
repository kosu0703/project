package com.ict.mypage.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.ict.mypage.dao.OrderListVO;
import com.ict.mypage.dao.PurchaseListVO;
import com.ict.mypage.dao.WishListVO;
import com.ict.mypage.service.MypageService;

@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;

	@GetMapping("orderlist_page.do")
	public ModelAndView getOrderList(@ModelAttribute("u_idx") String u_idx) {
		try {

			ModelAndView mv = new ModelAndView("mypage/orderList_page");

			// DB 가서 u_idx 에 해당하는 주문리스트를 가져오자
			List<OrderListVO> order_list = mypageService.getOrderList(u_idx);

			if (order_list != null) {

				List<OrderListVO> remove = new ArrayList<OrderListVO>();
				String order_date = "";
				
				for (OrderListVO k : order_list) {
					// 주문 날짜 가져오기
					order_date = k.getOrder_date();

					// 포맷으로 바꾸기
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

					// Date 로 날짜형 변환
					Date order = sdf.parse(order_date);

					// 현재날짜시간 구하기
					Calendar now = Calendar.getInstance();

					// 주문날짜시간 과 현재날짜시간 비교하기 (시간단위)
					long diff = (now.getTimeInMillis() - order.getTime()) / (1000 * 60 * 60);
					
					// OrderListVO 에 있는 order_state 에 주문상태 값 넣어주기
					// 1시간보다 작으면 = 상품준비중
					// 24시간보다 작으면 = 배송중
					// 72시간보다 작으면 = 배송완료
					if (diff <= 1) {
						k.setOrder_state("상품준비중");
					} else if (diff <= 24) {
						k.setOrder_state("배송중");
					} else if (diff <= 72) {
						k.setOrder_state("배송완료");
					} else {
						remove.add(k);
						//	72시간보다 크면 자동 구매확정 => 구매내역으로 이동
						//	DB 에 가서 delivery_acive 값을 1로 업데이트
						int result = mypageService.getDeliveryActive(k.getOrder_idx());	
					}
				}
				order_list.removeAll(remove);

				mv.addObject("order_list", order_list);
				return mv;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("common/error");
	}
	
	//	구매목록 보기
	@GetMapping("purchaselist_page.do")
	public ModelAndView getPurchaseList(@ModelAttribute("u_idx")String u_idx) {
		try {
			ModelAndView mv = new ModelAndView("mypage/purchaseList_page");
			
			List<PurchaseListVO> purchase_list = mypageService.getPurchaseList(u_idx);
			
			if (purchase_list != null) {
				
				mv.addObject("purchase_list", purchase_list);
				return mv;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("common/error");
	}
	
	//	구매확정 버튼 누르면 구매목록으로 이동
	@GetMapping("purchase_ok.do")
	public ModelAndView purchaseOK(@ModelAttribute("u_idx")String u_idx, String order_idx) {
		try {
			ModelAndView mv = new ModelAndView("redirect:purchaselist_page.do");
			
			int result = mypageService.getDeliveryActive(order_idx);
			if (result > 0) {
				return mv;
			}
				
		} catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("common/error");
	}
	
	//	찜목록
	@GetMapping("wishlist_page.do")
	public ModelAndView getWishList(@ModelAttribute("u_idx")String u_idx) {
		ModelAndView mv = new ModelAndView("mypage/wishList_page");
		
		List<WishListVO> wish_list = mypageService.getWishList(u_idx);
		
		if (wish_list != null) {
			mv.addObject("wish_list", wish_list);
			return mv;
		}
		
		return new ModelAndView("common/error");
	}
	

}














