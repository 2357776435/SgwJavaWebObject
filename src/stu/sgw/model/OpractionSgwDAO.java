package stu.sgw.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface OpractionSgwDAO {
	ResultSet findAll(String tableName1);//��ѯ����
	int addObj(Object obj, String tableName2) throws SQLException;//�������
	int delById(String delStr);
}
