package com.lecodi.foru.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import com.lecodi.foru.vo.Board;
import com.lecodi.foru.vo.Reply;

public interface BoardMapper {

	int writeQ(Board b);

	ArrayList<Board> getList();

	ArrayList<Board> getMyList(RowBounds rb, String id);

	String getId(int boardnum);

	Board getBoard(int boardnum);

	ArrayList<Board> getQnaList(RowBounds rb);

	int totalCount();

	int writeR(Reply r);

	ArrayList<Reply> getReply(int boardnum);

	void deleteReply(int replynum);

}
