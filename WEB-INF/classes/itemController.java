import Bean.item;
import DAO.itemDao;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class itemController extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String category = request.getParameter("val");
		String vnv = request.getParameter("v");

		item[] i = new item[20];
		for(int k=0; k<20; k++)
    		i[k] = new item();

		itemDao d = new itemDao();

		int f = d.getItem(i,category,vnv);

		int j=0;
		while(j<f)
		{
			/*request.getRequestDispatcher("itemDisplay.jsp?name="+i[j].getName()
				+"&content="+i[j].getContent()
				+"&price="+i[j].getPrice()
				+"&id="+i[j].getId()
				+"&index="+j
				+"&category="+category+"&image="+i[j].getImage()).include(request,response);*/

				request.getRequestDispatcher("itemDisplay.jsp?image="+i[j].getImage()+"&name="+i[j].getName()
				+"&content="+i[j].getContent()
				+"&price="+i[j].getPrice()
				+"&id="+i[j].getId()
				+"&index="+j
				+"&category="+category).include(request,response);

			j++;
		}
	}
}