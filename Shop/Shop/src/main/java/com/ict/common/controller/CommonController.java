package com.ict.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.ict.common.dao.UserVO;

@Controller
public class CommonController {
	// 메인 페이지 이동
	@GetMapping("/")
	public ModelAndView getFirst() {
		return new ModelAndView("main_page");
	}

	// 회원가입 페이지 이동
	@GetMapping("signup_page.do")
	public ModelAndView getSignupPage() {
		return new ModelAndView("sign/signup_page");
	}

	// 로그인 페이지 이동
	@GetMapping("login_page.do")
	public ModelAndView getLoginPage() {
		return new ModelAndView("sign/login_page");
	}

	// 아이디 찾기 페이지 이동
	@GetMapping("findID_page.do")
	public ModelAndView getFindIDPage() {
		return new ModelAndView("sign/findID_page");
	}

	// 패스워드 재설정 페이지 이동
	@GetMapping("repwd_page.do")
	public ModelAndView getRePwdPage() {
		return new ModelAndView("sign/repwd_page");
	}
	
	// 고객센터 이동
	@GetMapping("community_page.do")
	public ModelAndView getCommunityPage(UserVO userVO) {
		return new ModelAndView("community/community_page");
	}
	// 마이페이지 이동
	@GetMapping("mypage_page.do")
	public ModelAndView geteMypagePage(@ModelAttribute("u_idx")String u_idx) {
		return new ModelAndView("mypage/myPage_page");
	}
	// 장바구니 이동
	@GetMapping("basket_page.do")
	public ModelAndView geteWishListPage(UserVO userVO) {
		return new ModelAndView("order/basket_page");
	}
}
