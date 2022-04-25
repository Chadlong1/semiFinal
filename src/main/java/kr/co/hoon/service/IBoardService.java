package kr.co.hoon.service;

import java.util.List;

import kr.co.hoon.DTO.Board;

public interface IBoardService {
	// Board
	
		List<Board> getBoardAll();
		
		int write(Board board);
		
		Board getContentsByBoardId(int boardId);
		
		int updateContentsByBoardId(Board board);
		
		int deleteContentsByBoardId(int boardId);
}
