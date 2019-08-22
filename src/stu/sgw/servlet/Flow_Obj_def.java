package stu.sgw.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import stu.sgw.bll.T_flow_step_def;
import stu.sgw.model.OpractionSgwDAO;
import stu.sgw.model.OpractionSgwDB;

public class Flow_Obj_def extends HttpServlet {
	private OpractionSgwDAO dao;
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
		String flagStr=request.getParameter("flag");
		if(flagStr.equals("flowdef")){
			if(request.getParameter("op")==null||request.getParameter("op").trim().length()==0){
				this.ShowFlow_step_def(request, response);//查看信息
			}		
			else if(request.getParameter("op").equals("del")){
				this.DeleteFlow_step_def(request,response);//删除信息
		}
		}
	}
		private void DeleteFlow_step_def(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {//删除信息
			String delStr="delete T_flow_step_def where Step_no="+request.getParameter("Step_no");
			JOptionPane.showMessageDialog(null, "删除成功！");
			this.dao=new OpractionSgwDB();
			this.dao.delById(delStr);
			String url="Flow_Obj_def?flag=flowdef&op=";//添加成功后刷新该界面
			request.getRequestDispatcher(url).forward(request, response);
	}
		private void ShowFlow_step_def(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {//查看信息
			dao=new OpractionSgwDB();
			ResultSet rs=null;
			rs=dao.findAll("dbo.T_flow_step_def");
			ArrayList<T_flow_step_def> flowdef=new ArrayList<T_flow_step_def>();
			int pageCount=1;//设置默认初始值页数
			int pageSize=2;//设置每页初始值显示多少大小
			if(rs!=null){
			try {
				while(rs.next()){
					flowdef.add(new T_flow_step_def(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5)));
				}
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
				}
			}
			if(flowdef.size()%pageSize==0){
				pageCount=flowdef.size()/pageSize;
			}else{
				pageCount=flowdef.size()/pageSize+1;
			}
				HttpSession session=request.getSession();
				session.setAttribute("flowdef",flowdef);
				JOptionPane.showMessageDialog(null, flowdef);
				String pageNow="1";//初始值的页数
				JOptionPane.showMessageDialog(null, pageNow);
				if(!(request.getParameter("pageNow")==null||request.getParameter("pageNow").trim().length()==0)){
					pageNow=/*Integer.parseInt(*/request.getParameter("pageNow")/*)*/;
					JOptionPane.showMessageDialog(null, pageNow);
				}
				request.setAttribute("pageCount", pageCount);
				request.setAttribute("pageNow", pageNow);
				request.setAttribute("pageSize",pageSize);
				request.getRequestDispatcher("flow_def.jsp").forward(request, response);
		}
	
}

