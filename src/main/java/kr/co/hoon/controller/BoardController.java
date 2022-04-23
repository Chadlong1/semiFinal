package kr.co.hoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hoon.DTO.Board;
import kr.co.hoon.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@ModelAttribute("defaultBoard")
	public Board defaultBoard() {
		Board board = new Board();
		board.setBoardId("boardId");
		board.setUserId("userId");
		board.setTitle("title");
		board.setContents("contents");
		board.setBoardDate("boardDate");
		board.setBoardAvailable(0);
		return board;
	}
	
	
	@GetMapping("/boardList")
	public String showList(Model model) {
		model.addAttribute("boardList", boardService.getBoardAll());
		return "boardList";
	}
	
	@PostMapping("/write")
	public String write(@ModelAttribute(name = "defaultBoard") Board board, Model model) {
		model.addAttribute("result", boardService.write(board));
		return "boardWrite";
	}
}