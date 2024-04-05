package com.ict.common.dao;

import org.springframework.web.multipart.MultipartFile;

public class Pro_ImgVO {
	private String image_idx, pro_idx, f_name, regdate, main;
	
	private MultipartFile file;
	
	public String getMain() {
		return main;
	}

	public void setMain(String main) {
		this.main = main;
	}

	public String getImage_idx() {
		return image_idx;
	}

	public void setImage_idx(String image_idx) {
		this.image_idx = image_idx;
	}

	public String getPro_idx() {
		return pro_idx;
	}

	public void setPro_idx(String pro_idx) {
		this.pro_idx = pro_idx;
	}


	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
}
