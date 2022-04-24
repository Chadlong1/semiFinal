package kr.co.hoon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hoon.DTO.Board;
import kr.co.hoon.repository.BoardRepository;

@Service
public class BoardService implements IBoardService{
	@Autowired
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
