import Bean.item;
import DAO.itemDao;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class cartController extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String val = request.getParameter("val");
		Cookie[] ck = request.getCookies();

//i=0 JSESSIONID ; i=1 Username (Default='Guest')
		item[] itemAdded = new item[ck.length];
		for(int i=0;i<ck.length;i++)
			itemAdded[i] = new item();

		for(int i=1;i<ck.length;i++)
		{
			
			if(!(ck[i].getValue().equals("Guest")))
			{
				//out.println(i+" Name:"+ck[i].getName()+" Value"+ck[i].getValue()+"<br>");
				int id = Integer.parseInt(ck[i].getName());
				itemAdded[i].setId(id);
			}
		}

		int j=1;
		itemDao dao = new itemDao();

		if(val.equals("0"))
		{
			while(j<ck.length)
			{		
				if(!(ck[j].getValue().equals("Guest")))
				{	
					int returnedValue = dao.getDetails(itemAdded[j]);
					int index = j-1;
					int vnv = itemAdded[j].getVnv();
					request.getRequestDispatcher("cartDisplay.jsp?name="+itemAdded[j].getName()
						+"&price="+itemAdded[j].getPrice()
						+"&count="+ck[j].getValue()
						+"&id="+itemAdded[j].getId()
						+"&index="+index
						+"&vnv="+itemAdded[j].getVnv()).include(request,response);
				}
				j++;
			}
		}
		else
		{
			while(j<ck.length)
			{		
				if(!(ck[j].getValue().equals("Guest")))
				{	
					int returnedValue = dao.getDetails(itemAdded[j]);
					int index = j-1;
					int vnv = itemAdded[j].getVnv();
					request.getRequestDispatcher("quickView.jsp?name="+itemAdded[j].getName()
						+"&price="+itemAdded[j].getPrice()
						+"&count="+ck[j].getValue()
						+"&id="+itemAdded[j].getId()
						+"&index="+index
						+"&vnv="+itemAdded[j].getVnv()
						+"&img="+itemAdded[j].getImage()).include(request,response);
				}
				j++;
			}
		}

	}
}