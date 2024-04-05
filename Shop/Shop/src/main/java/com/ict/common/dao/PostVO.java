package com.ict.common.dao;

import org.springframework.web.multipart.MultipartFile;

public class PostVO {
	private String post_idx, u_idx, p_idx, post_category, post_subject, post_content, 
	post_f_name, regdate;
	
	private MultipartFile post_file;
	
	public String getPost_idx() {
		return post_idx;
	}
	public void setPost_idx(String post_idx) {
		this.post_idx = post_idx;
	}
	public String getU_idx() {
		return u_idx;
	}
	public void setU_idx(String u_idx) {
		this.u_idx = u_idx;
	}
	public String getP_idx() {
		return p_idx;
	}
	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}
	public String getPost_category() {
		return post_category;
	}
	public void setPost_category(String post_category) {
		this.post_category = post_category;
	}
	public String getPost_subject() {
		return post_subject;
	}
	public void setPost_subject(String post_subject) {
		this.post_subject = post_subject;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_f_name() {
		return post_f_name;
	}
	public void setPost_f_name(String post_f_name) {
		this.post_f_name = post_f_name;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public MultipartFile getPost_file() {
		return post_file;
	}
	public void setPost_file(MultipartFile post_file) {
		this.post_file = post_file;
	}
	
}
