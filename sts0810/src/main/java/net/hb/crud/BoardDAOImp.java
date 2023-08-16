package net.hb.crud;

import java.util.Date;
import java.util.List;

public interface BoardDAOImp {
	public void boardInsert(BoardDTO dto);
	public int boardCount();
	public List boardSelect();
	public void boardDetail(int data);
	public void boardDelete(int data);
	public void boardEdit();
}//END
