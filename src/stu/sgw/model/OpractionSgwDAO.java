package stu.sgw.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface OpractionSgwDAO {
	ResultSet findAll(String tableName1);//查询数据
	int addObj(Object obj, String tableName2) throws SQLException;//添加数据
	int delById(String delStr);
}
