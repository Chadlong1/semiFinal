package kr.co.hoon.service;

import java.util.List;

import kr.co.hoon.DTO.Board;
import kr.co.hoon.repository.BoardRepository;

public class BoardService implements IBoardService{
	private BoardRepository boardRepository;
	
	@Override
	public List<Board> getBoardAll() {
		return boardRepository.getBoardAll();
	}

	@Override
	public int write(Board board) {
		return boardRepository.write(board);
	}
	
}
