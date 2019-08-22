package stu.sgw.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import stu.sgw.bll.T_flow_step_def;
import stu.sgw.model.OpractionSgwDAO;
import stu.sgw.model.OpractionSgwDB;

public class Flow_Add_def extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Step_noStr=request.getParameter("Step_no");
		String Step_nameStr=request.getParameter("Step_name");
		String Limit_timeStr=request.getParameter("Limit_time");
		String Step_desStr=request.getParameter("Step_des");
		String URLStr=request.getParameter("URL");
		T_flow_step_def flowdef=new T_flow_step_def(Integer.parseInt(Step_noStr),Step_nameStr,
			Integer.parseInt(Limit_timeStr),Step_desStr,URLStr);
		OpractionSgwDAO dao=new OpractionSgwDB();
		try {
			dao.addObj(flowdef,"T_flow_step_def");
			JOptionPane.showMessageDialog(null, "工程添加成功！");
			
		} catch (Exception e) {
				e.printStackTrace();
		}
//		String url="Flow_Obj_def?flag=flowdef";
		request.getRequestDispatcher("Flow_Obj_def?flag=flowdef").forward(request, response);//添加成功后刷新该界面
	}

}
