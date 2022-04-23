package kr.co.hoon.DTO;

public class Board {
	private String boardId;
	private String userId;
	private String title;
	private String contents;
	private String boardDate;
	private int boardAvailable;

	public Board() {
	}

	public Board(String boardId, String userId, String title, String contents, String boardDate,
			int boardAvailable) {
		this.boardId = boardId;
		this.userId = userId;
		this.title = title;
		this.contents = contents;
		this.boardDate = boardDate;
		this.boardAvailable = boardAvailable;
	}

	public String getBoardId() {
		return boardId;
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public int getBoardAvailable() {
		return boardAvailable;
	}

	public void setBoardAvailable(int boardAvailable) {
		this.boardAvailable = boardAvailable;
	}

	@Override
	public String toString() {
		return "board [boardId=" + boardId + ", userId=" + userId + ", title=" + title + ", contents=" + contents
				+ ", boardDate=" + boardDate + ", boardAvailable=" + boardAvailable + "]";
	}

}
