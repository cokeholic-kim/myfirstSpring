package com.jth.exercise.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jth.exercise.board.service.BoardService;
import com.jth.exercise.board.vo.BoardVO;

@Controller
public class BoardController {
	
	private static final Logger Logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	/**
	 * 저장화면이동
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/board/register")
	public String boardRegister(Model model) throws Exception{
		
		Logger.info("BoardController , boardRegister.");
		
		
		return "board/register";
	}
	
	/**
	 * 저장동작
	 * @param boardVO
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/board/register")
	public String boardRegisterPost(BoardVO boardVO)throws Exception {
		
		Logger.info("BoardCOntroller, boardRegisterPost.");	
		Logger.info("boardVOString : {}",boardVO.toString());
		
		int result = boardService.insertBoard(boardVO);
		
		Logger.info("result : {}",result);
		
		return "board/result";
	}
	
	/**
	 * 목록화면 이동
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardList(Model model) throws Exception{
		Logger.info("BoardCOntroller, boardList.");	
		
		List<BoardVO> resultList = boardService.selectBoardList();
		Logger.info("resultList :{}", resultList.toString());
		
		model.addAttribute("resultList", resultList);
		
		return "board/list";
	}
	
	@GetMapping("/board/detail")
	public String boardDetail(Model model, BoardVO boardVO) throws Exception{
		
		Logger.info("BoardCOntroller, boardList ");
		
		//임시
//		boardVO.setId("1");
		
		BoardVO resultData = boardService.selectBoardDetail(boardVO);
		Logger.info("resultData : {}",resultData.toString());
		
		model.addAttribute("resultData", resultData);
		
		return "board/detail";
	}
	
	@GetMapping("/board/modify")
	public String boardModify(Model model,BoardVO boardVO)throws Exception{
		
		Logger.info("BoardController, boardList");
		
		BoardVO resultData = boardService.selectBoardDetail(boardVO);
		Logger.info("resultData : {}",resultData.toString());
		
		model.addAttribute("resultData",resultData);
		
		return "board/modify";
	}
	
	@PostMapping
	public String boardModifyPost(BoardVO boardVO) throws Exception{
		Logger.info("BoardCOntroller, boardModifyPost");
		
		int result = boardService.updateBoard(boardVO);
		Logger.info("result : {}",result);
		return "/board/result";
	}
	
	@PostMapping("/board/delete")
	public String boardDeletePost(BoardVO boardVO) throws Exception{
		
		Logger.info("BoardCOntroller ,  boardDeletePost");
		
		int result = boardService.deleteBoard(boardVO);
		Logger.info("result :{}", result);
		
		return "board/result";
	}
}
