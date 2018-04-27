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
	
	<title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/easyui/locale/easyui-lang-zh_CN.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>催债系统</title>
</head>
<body>
	<!-- <div id="toolbar" style="margin:0px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">增加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="amend()">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="cancel()">删除</a>
	</div> -->
	<table id="mTb" 
        class="easyui-datagrid" width="100%" 
        url="goto_organization.do"
        toolbar="#toolbar" pagination="true"
        rownumbers="true" fitColumns="true" singleSelect="true"
        pageSize="5"        
        pageList="[3,5,8,10]">
		<thead>
			<tr>
				<th data-options="field:'id',width:0" style="display:none;" ></th>
				<th data-options="field:'name',width:180">机构名称</th>
				<th data-options="field:'type',width:60">机构类型</th>
				<th data-options="field:'post_code',width:80">机构编号</th>
				<th data-options="field:'principal_id',width:80">负责人</th>
				<th data-options="field:'address',width:80">地址</th>
				<th data-options="field:'phone',width:80">电话号码</th>
				<th data-options="field:'post_code',width:80">邮政编码</th>
				<th data-options="field:'fax',width:80">传真号</th>
				<th data-options="field:'create_time',width:80">创建时间</th>
				<th data-options="field:'modify_time',width:120">修改时间</th>
			</tr>
		</thead>
	</table>
	
	<!-- <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
            closed="true" buttons="#dlg-buttons">
        <div class="ftitle">用户信息</div>
        <form id="fm" method="post" novalidate>
            <div class="fitem">
                <label>机构名称:</label>
                <input name="name" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>地址:</label>
                <input name="address" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>电话号码:</label>
                <input name="phone" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>邮政编码:</label>
                <input name="post_code" class="easyui-validatebox" required="true">
            </div>
            <div class="传真号">
                <label>地址:</label>
                <input name="fax" class="easyui-validatebox" required="true">
            </div>
        </form>
    </div> -->
	<div id="amendwin" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:300px;padding:5px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding:10px;">
				<%-- <jsp:include page="amendOrg.jsp"/> --%>
			</div>
			
		</div>
	</div>
<script type="text/javascript">
	function formatProgress(value){
		if (value){
	    	var s = '<div style="width:100%;border:1px solid #ccc">' +
	    			'<div style="width:' + value + '%;background:#cc0000;color:#fff">' + value + '%' + '</div>'
	    			'</div>';
	    	return s;
		} else {
	    	return '';
		}
	}
</script>

</body>
</html>