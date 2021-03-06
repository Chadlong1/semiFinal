package kr.co.hoon.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kr.co.hoon.DTO.Board;

@Repository
public class BoardRepository implements IBoardRepository {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Board> getBoardAll() {

		return jdbcTemplate.query("SELECT * FROM board", new RowMapper<Board>() {

			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				int boardId = rs.getInt("boardId");
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
		return jdbcTemplate.update("INSERT INTO board (userId,title,contents,boardAvailable) VALUES (?,?,?,?)", board.getUserId(),
				board.getTitle(), board.getContents(), board.getBoardAvailable());
	}

	@Override
	public Board getContentsByBoardId(int boardId) {
		return jdbcTemplate.queryForObject("SELECT * FROM board WHERE boardId =?"
				, new BeanPropertyRowMapper<Board>(Board.class)
				, boardId);
	}

	@Override
	public int updateContentsByBoardId(Board board) {
		return jdbcTemplate.update("UPDATE board SET title = ?, contents = ? WHERE boardId = ?"
				, board.getTitle()
				, board.getContents()
				, board.getBoardId());
	}

	@Override
	public int deleteContentsByBoardId(int boardId) {
		return jdbcTemplate.update("UPDATE board SET boardAvailable = ? WHERE boardId = ?"
				, 0
				, boardId);
	}
	
	
	
}
