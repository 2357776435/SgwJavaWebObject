<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>建设工程监管信息系统添加</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body background="images/123.jpg">
  <script type="text/javascript">
  function add(){
    if(document.form2.Step_no.value==""){
    	window.alert("工号不能为空,请输入工号");
    	document.form2.Step_no.focus();
    	return false;
    }else if(document.form2.Step_name.value==""){
    	window.alert("名称不能为空，请输入名称");
    	document.form2.Step_name.focus();
    	return false;
    }else if(document.form2.Limit_time.value==""){
    	window.alert("时限天数不能为空，请输入时限天数");
    	document.form2.Limit_time.focus();
    	return false;
    }else if(document.form2.Step_des.value==""){
    	window.alert("描述不能为空，请输入描述");
    	document.form2.Step_des.focus();
    	return false;
    }else if(document.form2.URL.value==""){
    	window.alert("链接地址不能为空，请输入链接地址");
    	document.form2.URL.focus();
    	return false;
    }
    else{
    	return true;
    }
    }
    function sgw(){
    	alert("你确定要重置表单吗？");
    	}
  </script>
        <form id="form2" name="form2" method="post" action="Flow_Add_def">
         <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="100%" height="30" bgcolor="#029AC5" class="titletxt">&#8226;流程步骤增加</td>
      </tr>
    </table>
          <table width="100%" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#E7E7E7">
            <tr>
              <td width="24%" height="30" align="right" class="txt">工号：</td>
              <td height="30" align="left"><input  height="20" width="200" type="text" name="Step_no" id="Step_no" />
                <span class="txtred">*</span></td>
            </tr>
            <tr>
              <td width="24%" height="30" align="right" class="txt">名称：</td>
              <td height="30" align="left"><input  height="20" width="200" type="text" name="Step_name" id="Step_name" />
                <span class="txtred">*</span></td>
            </tr>
            <tr>
              <td height="30" align="right" class="txt">时限（天）：</td>
              <td height="30" align="left"><input  height="20" width="50" type="text" name="Limit_time" id="Limit_time" />                <span class="txtred">*</span></td>
            </tr>
            <tr>
              <td height="30" align="right" class="txt">描述：</td>
              <td height="30" align="left"><input  height="20" width="200" type="text" name="Step_des" id="Step_des" /></td>
            </tr>
    		<tr>
              <td height="30" align="right" class="txt">链接地址：</td>
              <td height="30" align="left"><input  height="20" width="200" type="text" name="URL" id="URL" /></td>
            </tr>
            <tr>
              <td height="30" align="right" class="txt">&nbsp;</td>
              <td height="30" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="reset" value="重置" onclick="javascript:return sgw()">
              <input type="submit" name="button2" id="button2" value="添加" onclick="javascript:return add()">
            </tr>
          </table>
        </form>
  </body>
</html>
