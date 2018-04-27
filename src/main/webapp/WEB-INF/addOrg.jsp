<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">

 <script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
 <script type="text/javascript" src="js/easyui/locale/easyui-lang-zh_CN.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>硅谷商城</title>
</head>
<body>
	<div id="dlg"  style="width:400px;height:280px;padding:10px 20px">
        <div class="ftitle">组织机构添加</div>
        <form id="fm" action="saveOrg.do">
            <div class="fitem">
                <label>机构名称:</label>
                <input name="name" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>公司驻地:</label>
                <input name="address" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>机构编号:</label>
                <input name="field:" class="easyui-validatebox" required="true">
            </div>
            
            <div class="fitem">
                <label>电话号码:</label>
                <input name="phone" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label >邮政编码:</label>
                <input name="post_code" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label >传真号:</label>
                <input name="fax" class="easyui-validatebox" required="true">
            </div>
            <input type="submit">
        </form>
    </div>
<script type="text/javascript">
	
	
	function q{
	
	}


</script>
</body>
</html>