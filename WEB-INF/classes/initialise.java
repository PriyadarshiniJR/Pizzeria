import Bean.item;
import DAO.itemDao;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class initialise extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String val = request.getParameter("val");

		int i;
		
		Cookie[] ck = request.getCookies();
		for(i=0;i<ck.length;i++)
		{
			if(ck[i].getName().equals("User"))
			{
				out.println(ck[i].getValue());
				break;
			}
		}

		if(i==ck.length)
		{
			Cookie newUser = new Cookie("User","Guest");
			response.addCookie(newUser);
			out.println("Guest");
		}
	}
}