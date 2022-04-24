package kr.co.hoon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.hoon.DTO.Board;
import kr.co.hoon.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@ModelAttribute("defaultBoard")
	public Board defaultBoard(HttpSession session) {
		Board board = new Board();
		board.setBoardId(0);
		board.setUserId((String)session.getAttribute("loginId"));
		board.setTitle("title");
		board.setContents("contents");
		board.setBoardDate("boardDate");
		board.setBoardAvailable(1);
		return board;
	}
	
	@GetMapping
	public String showList(Model model) {
		model.addAttribute("boardList", boardService.getBoardAll());
		return "boardList";
	}
	
	@PostMapping("/write")
	public String write(@ModelAttribute(name = "defaultBoard") Board board
			, RedirectAttributes redirectAttr) {
		boardService.write(board);
		return "redirect:/board";
	}
}