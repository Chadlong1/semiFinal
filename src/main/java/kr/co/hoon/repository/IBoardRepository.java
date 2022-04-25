package kr.co.hoon.repository;

import java.util.List;

import kr.co.hoon.DTO.Board;

public interface IBoardRepository {
	// Board
	
		List<Board> getBoardAll();
		
		int write(Board board);
		
		Board getContentsByBoardId(int boardId);
		
		int updateContentsByBoardId(Board board);
		
		int deleteContentsByBoardId(int boardId);
}
