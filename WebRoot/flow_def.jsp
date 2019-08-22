<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="stu.sgw.bll.T_flow_step_def" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>流程步骤定义页面</title>
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
  <script type="text/javascript">
  function sgw(){
  		return window.confirm("你确定要删除该工号吗？");
  }
  </script>
  <table width="834" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30" background="images/title01.jpg" class="title">&gt;&gt;流程步骤定义</td>
    <td width="27" height="30"><img src="images/title02.jpg" width="27" height="30" /></td>
    <td height="30" bgcolor="#029AC5" class="txt"><span class="titletxt">您的位置：系统管理 &gt; 流程步骤定义</span></td>
  </tr>
</table>
<br />
<table width="800" border="0" align="center">
  <tr>
    <td width="40%" rowspan="2" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="100%" height="30" bgcolor="#029AC5" class="titletxt">&#8226;流程步骤列表</td>
      </tr>
      <tr>
        <td height="30" align="center">
        <form id="form1" method="post" name="form1" action="Flow_Obj_def?flag=flowdef">
          <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#E7E7E7">
            <tr>
              <td width="7%" height="30" align="right" bgcolor="#80C6FF" class="txt"><label for="textfield1" class="txt">流程ID</label></td>
              <td width="15%" height="30" align="center" bgcolor="#80C6FF"><label for="textfield2" class="txt">流程名称</label></td>
              <td width="15%" height="30" align="center" bgcolor="#80C6FF"><label for="textfield3" class="txt">流程时间</label></td>
              <td width="15%" height="30" align="center" bgcolor="#80C6FF"><label for="textfield4" class="txt">流程描述</label></td>
              <td width="20%" height="30" align="center" bgcolor="#80C6FF"><label for="textfield5" class="txt">流程地址</label></td>
              <td width="15%" height="30" align="center" bgcolor="#80C6FF"><label for="textfield6" class="txt">注意</label></td>
            </tr>
             <%
             	String[] color={"#FFCCFF","#CC99FF","#FFFFCC"};
            	int pageNow=Integer.parseInt(request.getAttribute("pageNow").toString());
  				int pageCount=Integer.parseInt(request.getAttribute("pageCount").toString());
  				int pageSize=Integer.parseInt(request.getAttribute("pageSize").toString());
            List<T_flow_step_def> flowdef=(List<T_flow_step_def>)session.getAttribute("flowdef"); 
            	if(flowdef.size()==0){		
            %>
            <tr>
  					<td align="center" colspan="7">对不起，没有相关记录</td>
  				</tr>
  			<%}else{
  				for(int i=pageNow*pageSize-pageSize;i<pageNow*pageSize&&i<flowdef.size();i++){
  					T_flow_step_def td=flowdef.get(i);
  					//int i=1;
  					//for(T_flow_step_def td:flowdef){
  			 %>
            <tr bgcolor="<%=color[i%3]%>">
              <td width="23%" height="30" align="center" class="txt"><%=td.getStep_no()%></td>
              <td height="30" align="left" class="txt"><%=td.getStep_name()%></td>
              <td height="30" align="left" class="txt"><%=td.getLimit_time()%></td>
              <td height="30" align="left" class="txt"><%=td.getStep_des()%></td>
              <td height="30" align="left" class="txt"><%=td.getURL()%></td>
              <td align="center"><a href="Flow_Obj_def?flag=flowdef&op=del&Step_no=<%=td.getStep_no()%>"
  					onclick="javascript:return sgw()">删除工程</a></td>
  					
            </tr>
            <%}}%>
              			<tr>
  			<td align="center" height="30" style="width: 557px; ">共有&nbsp;
  			<font color="#FF0000"><%=flowdef.size() %></font>&nbsp;条记录,&nbsp;共 &nbsp;
  			<font color="#FF0000"><%=pageCount %></font>&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;当前第&nbsp;
  			<font color="#FF0000"><%=pageNow %></font>&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;
  			<a href="Flow_Obj_def?flag=flowdef&pageNow=1">首页</a>
  			&nbsp;&nbsp;&nbsp;&nbsp;
  			<% 
  				if(pageNow!=1){
  			%>
  			<a href="Flow_Obj_def?flag=flowdef&pageNow=<%=pageNow-1%>">上一页</a>
  			<%}
  				if(pageNow!=pageCount){
  			 %>
  			<% %>&nbsp;&nbsp;&nbsp;&nbsp;
  			<a href="Flow_Obj_def?flag=flowdef&pageNow=<%=pageNow+1%>">下一页</a>
  			<% }%>&nbsp;&nbsp;&nbsp;&nbsp;
  			<a href="Flow_Obj_def?flag=flowdef&pageNow=<%=pageCount%>">尾页</a>
  			&nbsp;&nbsp;&nbsp;&nbsp;
  			<label>
  			<select name="pageNow" id="select">
  			<option></option>
  			<% 
  				for(int i=1;i<=pageCount;i++){
  			%>
  			<option><%=i%></option>
  			<%}%>
  			</select>
  			<input type="submit" value="查看 "/>
  			</label>
  			</td>
  			</tr>
             <tr align="center">
            <td width="15%" height="30" align="center" bgcolor="#80C6FF">
            <a href="AddFlow_def.jsp">添加</a>
            </td>
          </table>
        </form></td>
      </tr>
    </table></td>
      </tr>
       </table>
<p>&nbsp;</p>
  </body>
</html>
