package kr.co.hoon.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import kr.co.hoon.DTO.Board;

public class BoardRepository implements IBoardRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Board> getBoardAll() {
		return jdbcTemplate.query("SELECT * FROM board", new RowMapper<Board>() {
			
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				String boardId = rs.getString("boardId");
				String userId = rs.getString("userId");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				String boardDate = rs.getString("boardDate");
				int boardAvailable = rs.getInt("boardAvailable");
				Board board = new Board(boardId, userId, title, contents, boardDate, boardAvailable);
				return board;
			}
		});
	}

	@Override
	public int write(Board board) {
		return jdbcTemplate.update("INSERT INTO board VALUES (?,?,?,?,?,?)"
				, board.getBoardId()
				, board.getUserId()
				, board.getTitle()
				, board.getContents()
				, board.getBoardDate()
				, board.getBoardAvailable()
				);
	}
	
}
