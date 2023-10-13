package com.jth.exercise.test.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jth.exercise.test.vo.orderRequest;

/**
 * 스프링 폼 태그
 * @author 김동현
 *
 */
@Controller
public class SpringFormController {

		private static final Logger Logger = LoggerFactory.getLogger(SpringFormController.class);
		
		/**
		 * 스프링폼 등록 화면
		 * @param model
		 * @return
		 * @throws Exception
		 */
		@GetMapping("/springform/registerForm")
		public String registerForm(Model model) throws Exception{
			
			Logger.info("SpringFormController , registerForm.");
			
			model.addAttribute("orderRequest",new orderRequest());
			
			return "springform/registerForm";
		}
		/**
		 * 스프링폼 데이터 전달
		 * @param orderRequest
		 * @return
		 * @throws Exception
		 */
		@PostMapping("/springform/register")
		public String springFormRegisterPost(orderRequest orderRequest) throws Exception{
			
			Logger.info("SpringFormController , springFormRegisterPost");
			
			Logger.info("데이터 확인 : {}",orderRequest.getOrderRequestNo());
			Logger.info("데이터 확인 : {}",orderRequest.getOrderRequestDate());
			Logger.info("데이터 확인 : {}",orderRequest.getItemNm());
			Logger.info("데이터 확인 : {}",orderRequest.toString());
			
			return "springform/result";
		}
}
