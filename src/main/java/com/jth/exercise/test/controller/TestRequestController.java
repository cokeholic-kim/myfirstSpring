package com.jth.exercise.test.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jth.exercise.test.vo.PurchaseRequestVO;

@Controller
public class TestRequestController {
	
	private static final Logger Logger = LoggerFactory.getLogger(TestRequestController.class);
	
	@GetMapping("/test/request/list")
	public String list() {
		
		return "test/request/tRequestList";
		
	}
	@GetMapping("/test/request/regist")
	public ResponseEntity<String> getRegist(String boardId,String boardContent,String boardWriter){
		
		ResponseEntity<String> reStr = null;
		
		Logger.info("boardId : {}",boardId);
		Logger.info("boardContent: {}",boardContent);
		Logger.info("boardWriter: {}",boardWriter);
		
		reStr = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		
		return reStr;
	}
	
	@GetMapping("test/request/registVO")
	@ResponseBody
	public ResponseEntity<String> getRegistVO(PurchaseRequestVO purchaseRequestVO){
		
		ResponseEntity<String> result= null;
		
		Logger.info("purchaseRequestVO :{}",purchaseRequestVO);
		Logger.info("purchaseRequestVO.toString :{}",purchaseRequestVO.toString());
		
		result = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		
		return result;
	}

	
}
