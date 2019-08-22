package stu.sgw.dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConDBSgw {
	private static Connection con;
	private static String driverName;
	private static String url;
	private static String user; 
	private static String password;

	static {
		driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		url = "jdbc:sqlserver://DESKTOP-A0GEJHC\\SQLEXPRESS:1433;DatabaseName=ConstructionDBSGW";
		user = "sgw"; 
		password = "123456";     
	} 
	/**
	 * @return the con 
	 */
	public static Connection getCon() { 
		return con;
	}

	/**  
	 * @param con 
	 *            the con to set  
	 */
	public static void setCon(Connection con) {
		if (con == null)
			createCon();// �������Ӷ��󹹽���
		else
			ConDBSgw.con = con;

	}

	/**
	 * ���Ӷ��󹹽���
	 */
	private static void createCon() {

		try {
			// 1.����JDBC��������Class.forName
			Class.forName(driverName);
			// 2.�������ݿ����ӣ�DriverManger��Connection
			ConDBSgw.con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) { 
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public static void main(String[] args) {
		ConDBSgw.setCon(null);
		if(ConDBSgw.getCon()==null){
			System.out.println("ʧ�ܣ�");
		}else{ 
			System.out.println("���ӳɹ���");
		}
	}
}
