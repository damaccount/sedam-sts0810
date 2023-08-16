package net.hb.crud;

import java.io.File; //추가
import java.util.List;

import javax.servlet.ServletContext; //추가

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired; //추가 new객체화역할

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    String msg="";
    
    @Autowired
    ServletContext application;

    @Autowired
    BoardDAO  dao;
    
    
	@RequestMapping(value = "/boardWrite.do", method = RequestMethod.GET)
	public String board_write() {
		return "boardWrite"; //WEB-INF/views/boardWrite.jsp
	}//end
	
	@RequestMapping("/boardInsert.do")
	public String board_insert(BoardDTO  dto) {
	  String path=application.getRealPath("/resources/upload");
	  String img=dto.getUpload_f().getOriginalFilename();
	  
	  File file = new File(path, img);
	  try{dto.getUpload_f().transferTo(file); }catch(Exception ex){  }  
	  dto.setImg_file_name(img);  //hobby테이블 이미지필드 img_file_name
	  
	  //dao단으로 넘겨서 저장을 위한 컴포넌트화 
	  dao.boardInsert(dto);
	  return "redirect:/boardList.do";
	}//end
	
	
	@RequestMapping("/boardList.do")
	public String board_select(Model model ) {    
		int Gtotal = dao.boardCount();
		List<BoardDTO> LG = dao.boardSelect( );
		model.addAttribute("Gtotal", Gtotal);
		model.addAttribute("LG", LG);
	    return "boardList";  //WEB-INF/views/boardList.jsp
	}//end

}// BoardController class END
























