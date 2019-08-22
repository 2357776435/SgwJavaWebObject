<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>业务处理功能显示页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <table width="190" border="0" cellspacing="8">
  <tr>
    <td class="second_menu">&nbsp;&nbsp;<a href="error.jsp" target="content">&#8250;&#8250;门禁</a></td>
  </tr>
  <tr>
    <td><span class="second_menu">&nbsp;&nbsp;<a href="error.jsp" target="content">&#8250;&#8250;标段注销</a></span></td>
  </tr>
  <tr>
    <td><span class="second_menu">&nbsp;&nbsp;<a href="error.jsp" target="content">&#8250;&#8250;浏览流程</a></span></td>
  </tr>
  <tr>
    <td><span class="second_menu">&nbsp;&nbsp;<a href="error.jsp" target="content">&#8250;&#8250;释放专家抽取占用</a></span></td>
  </tr>


</table>
  </body>
</html>
