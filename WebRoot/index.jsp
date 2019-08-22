<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>建设工程监管信息系统首页</title>
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
 	<table width="1024" height="768" border="0" align="center" cellpadding="0" cellspacing="0" background="images/image_all.jpg">
  <tr>
    <td width="1024" height="140" colspan="2" valign="bottom" class="menu"><table width="586" height="29" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="466">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="left_xtgl.jsp" target="left">系统管理</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="left_ywcl.jsp" target="left">&nbsp;业务处理</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="left_jylc.jsp" target="left">交易流程</a></td>
        <td width="112" class="menu"><a href="javascript:window.close();">退出系统</a></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="190" height="590"><iframe frameborder="0" name="left" scrolling="auto" width="190" height="590" src="left_xtgl.jsp"></iframe></td>
    <td width="834" height="590"><iframe frameborder="0" name="content" width="834" height="590" scrolling="auto"></iframe></td>
  </tr>
  <tr>
    <td width="1024"  height="37" colspan="2">&nbsp;</td>
  </tr>
</table>
  </body>
</html>
