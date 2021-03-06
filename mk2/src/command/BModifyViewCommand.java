package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.BDto;

public class BModifyViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String idx = request.getParameter("bIDX");
		
		Dao dao = Dao.getInstance();
		BDto dto = dao.bGetContent(idx);
		request.setAttribute("bModify_view", dto);
	}

}
