package com.lecodi.foru.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lecodi.foru.mapper.BoardMapper;
import com.lecodi.foru.vo.Board;
import com.lecodi.foru.vo.Reply;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession session;

	private static final Logger logger = LoggerFactory.getLogger(MemberDAO.class);
	
	/**
	 * 문의글 남기기
	 * @param Board
	 * @return ArrayList
	 */
	public int writeQ(Board b){
		int result = 0;
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			result = mapper.writeQ(b);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 공지사항 목록 가져오기
	 * @return
	 */
	public ArrayList<Board> getList() {
		ArrayList<Board> noticeList = null;
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			noticeList = mapper.getList();
		}catch(Exception e){
			e.printStackTrace();
		}
		return noticeList;
	}

	/**
	 * 내 문의내역 목록 불러오기
	 * @param page 
	 * @param lIMIT 
	 */
	public ArrayList<Board> getMyList(String id, int limit, int page) {
		ArrayList<Board> myList = null;
		RowBounds rb = new RowBounds((page-1)*limit,limit);
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			myList = mapper.getMyList(rb, id);
		}catch(Exception e){
			e.printStackTrace();
		}
		return myList;
	}

	public String getId(int boardnum) {
		String id = null;
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		try{
			id = mapper.getId(boardnum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}

	public Board getBoard(int boardnum) {
		Board b = null;
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			b = mapper.getBoard(boardnum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ArrayList<Board> getQnaList(int limit, int page) {
		ArrayList<Board> qnaList = null;
		RowBounds rb = new RowBounds((page-1)*limit,limit);
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			qnaList = mapper.getQnaList(rb);
		}catch(Exception e){
			e.printStackTrace();
		}
		return qnaList;
	}

	public int selectTotalCount() {
		int result = 0;
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.totalCount();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}

	public int writeR(Reply r) {
		int result = 0;
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			result = mapper.writeR(r);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<Reply> getReply(int boardnum) {
		ArrayList<Reply> list = null;
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			list = mapper.getReply(boardnum);
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

	public void deleteReply(int replynum) {
		try{
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			mapper.deleteReply(replynum);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	
}
