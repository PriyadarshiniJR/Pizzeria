import Bean.item;
import DAO.itemDao;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class cookieAdder extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int flag=0,i;
		String id = request.getParameter("id");
		String count = request.getParameter("count");

		Cookie[] ck = request.getCookies();
		for(i=0;i<ck.length;i++)
		{
			if(ck[i].getName().equals(id))
			{
				int countNew = Integer.parseInt(ck[i].getValue())+ Integer.parseInt(count);
				ck[i].setValue(Integer.toString(countNew));
				response.addCookie(ck[i]);
				flag=1;
				break;
			}
		}

		if(i==ck.length && flag==0)
		{
			Cookie item = new Cookie(id,count);
			response.addCookie(item);
		}
	}
}