package stu.sgw.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import stu.sgw.bll.T_flow_step_def;
import stu.sgw.dal.ConDBSgw;

public class OpractionSgwDB implements OpractionSgwDAO {
	private Connection con;

	/**
	 * 
	 */
	public OpractionSgwDB() {
		ConDBSgw.setCon(null);
		this.con = ConDBSgw.getCon();
	}
	@Override
	public ResultSet findAll(String tableName1) {
		ResultSet rs=null;
		String query="select * from\t"+tableName1;
		try {
			Statement st=this.con.createStatement();
			rs=st.executeQuery(query);
//			rs.close();
//			st.close();
//			this.con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	@Override
	public int delById(String delStr) {
		int rs=0;
		Statement st;
		try {
			st=this.con.createStatement();
			rs=st.executeUpdate(delStr);
			st.close();
			this.con.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	@Override
	public int addObj(Object obj, String tableName2) throws SQLException {
		int rs=0;
		PreparedStatement pst=null;
		String insert="insert into \t";
		if(tableName2.equals("T_flow_step_def")){//添加项目名
			T_flow_step_def t=(T_flow_step_def)obj;
			insert+=tableName2+"\tvalues(?,?,?,?,?)";
			pst=this.con.prepareStatement(insert);
			pst.setInt(1, t.getStep_no());
			pst.setString(2, t.getStep_name());
			pst.setInt(3, t.getLimit_time());
			pst.setString(4, t.getStep_des());
			pst.setString(5, t.getURL());
		}
		rs=pst.executeUpdate();
		return rs;
	}
}
