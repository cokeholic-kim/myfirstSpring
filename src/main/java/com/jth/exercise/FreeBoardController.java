package com.jth.exercise;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 
 * 자유게시판
 * @author 김동현
 *
 */
@Controller  
@RequestMapping("/freeboard")
public class FreeBoardController {
	
	/**
	 * 자유게시판 목록
	 * @return
	 */
	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public String freeboardList() {
		return "freeBoardList";
	}
	/**
	 * 자유게시판 등록
	 * @return
	 */
	@GetMapping(value = "/insert")
	public String freeBoardInsert() {
		return "freeBoardInsert";
	}
	/**
	 * 자유게시판 수정
	 */
	@GetMapping(value = "/modify")
	public String freeBoardModify() {
		return "freeboard/modify";
	}
}
