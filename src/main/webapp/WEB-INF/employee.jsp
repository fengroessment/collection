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

<title>催收系统</title>
</head>
<body>
		<table id="dg" title="用户管理" class="easyui-datagrid" fitColumns="true"
        pagination="true" rownumbers="true"
        url="employeeList.do" fit="true"
        toolbar="#tb1">
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<th field="id" width="0" align="center">员工编号</th>
				<th field="status" width="180" align="center">员工状态</th>
				<th field="loginName" width="60" align="center">登陆账号</th>
				<th field="userName" width="80" align="center">姓名</th>
				<th field="sex" width="80" align="center">性别</th>
				<th field="joinTime" width="80" align="center">入职时间</th>
				<th field="positionId" width="80" align="center">岗位号</th>
				<th field="orgId" width="80" align="center">机构</th>
				<th field="ccPhone" width="80" align="center">联系电话</th>
				<th field="modifyTime" width="80" align="center">录入时间</th>
				<th field="createTime" width="120" align="center">修改时间</th>
			</tr>
		</thead>
	</table>
    <div id="tb1">
        <a href="javascript:openEmpAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a> 
		<a href="javascript:openEmpModifyDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a> 
		<a href="javascript:deleteEmp()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
		
        <div>
            &nbsp;用户名：&nbsp;
            <input type="text" id="s_userName" size="20" onkeydown="if(event.keyCode == 13)searchEmp()" />
            <a href="javascript:searchEmp()" class="easyui-linkbutton" iconCls="icon-search" plain="true">查询</a>
        </div>

        <div id="dlg-buttons">
            <a href="javascript:saveEmp()" class="easyui-linkbutton"
                iconCls="icon-ok">保存</a> <a href="javascript:closeEmpDialog()"
                class="easyui-linkbutton" iconCls="icon-cancel">关闭</a>
        </div>

        <div id="dlg1" class="easyui-dialog"
            style="width: 730px;height:280px;padding:10px 10px;" closed="true"
            buttons="#dlg-buttons">
            <form method="post" id="fm1">
                <table cellspacing="8px;">
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" id="loginName" name="loginName"
                            class="easyui-validatebox" required="true" />&nbsp;<span
                            style="color: red">*</span>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>原始密码：</td>
                        <td><input  id="password" name="password"
                            class="easyui-validatebox" required="true" value="111111"/>&nbsp;<span
                            style="color: red">*</span>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" id="userName" name="userName"
                            class="easyui-validatebox" required="true" />&nbsp;<span
                            style="color: red">*</span>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>性别：</td>
                        <td><select name="sex" class="easyui-combobox"
                            id="sex" style="width: 154px;" editable="false"
                            panelHeight="auto">
                                <option value="男">男</option>
                                <option value="女">女</option>
                        </select> &nbsp;<span style="color: red">*</span>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>联系电话：</td>
                        <td><input type="text" id="ccPhone" name="ccPhone"
                            class="easyui-validatebox" required="true" />&nbsp;<span
                            style="color: red">*</span>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>岗位：</td>
                        <td><select name="positionId" class="easyui-combobox"
                            id="positionId" style="width: 154px;" editable="false"
                            panelHeight="auto">
                                <option value="">请选择角色</option>
                                <option value="催收员">催收员</option>
                                <option value="外访员">外访员</option>
                                <option value="客服">客服</option>
                                <option value="经理">经理</option>
                        </select> &nbsp;<span style="color: red">*</span>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    
                    <tr>
                    	<td>所属机构：</td>
                        <td><select name="orgId" class="easyui-combobox"
                            id="orgId" style="width: 154px;" editable="false"
                            panelHeight="auto">
                                <option value="">请选择机构</option>
                                <option value="催收员">催收员</option>
                                <option value="外访员">外访员</option>
                                <option value="客服">客服</option>
                                <option value="经理">经理</option>
                        </select> &nbsp;<span style="color: red">*</span>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>入职时间：</td>
                        <td><input type="text" id="modifyTime" name="modifyTime"
                            class="easyui-datebox"  />&nbsp;<span
                            style="color: red">*</span>
                        </td>
                    </tr>
                </table>
            </form>
		</div>
	</div>
	
<script type="text/javascript">
	var url;
	function searchEmp() {
	    $("#dg").datagrid('load', {
	        "userName" : $("#s_userName").val()
	    });
	}
	function openEmpAddDialog() {
	    $("#dlg1").dialog("open").dialog("setTitle", "添加用户信息");
	    url = "saveEmp.do";
	}
	
	function openEmpModifyDialog() {
	    var selectedRows = $("#dg").datagrid("getSelections");
	    if (selectedRows.length != 1) {
	        $.messager.alert("系统提示", "请选择一条要编辑的数据！");
	        return;
	    }
	    var row = selectedRows[0];
	    $("#dlg1").dialog("open").dialog("setTitle", "编辑用户信息");
	    $("#fm").form("load", row);
	    url = "${pageContext.request.contextPath}/user/save.do?id=" + row.id;
	}
	
	function saveEmp() {
	    $("#fm1").form("submit", {
	        url : url,
	        onSubmit : function() {
	            if ($("#roleName").combobox("getValue") == "") {
	                $.messager.alert("系统提示", "请选择用户角色！");
	                return false;
	            }
	            return $(this).form("validate");
	        },
	        success : function(result) {
	            var result = eval('(' + result + ')');
	            if (result.success) {
	                $.messager.alert("系统提示", "保存成功！");
	                resetValue();
	                $("#dlg1").dialog("close");
	                $("#dg").datagrid("reload");
	            } else {
	                $.messager.alert("系统提示", "保存失败！");
	                return;
	            }
	        }
	    });
	}
	
	function resetValue() {
	    $("#userName").val("");
	    $("#password").val("");
	    $("#trueName").val("");
	    $("#email").val("");
	    $("#phone").val("");
	    $("#roleName").combobox("setValue", "");
	}
	
	function closeEmpDialog() {
	    $("#dlg1").dialog("close");
	    resetValue();
	}
	
	function deleteEmp() {
	    var selectedRows = $("#dg").datagrid("getSelections");
	    if (selectedRows.length == 0) {
	        $.messager.alert("系统提示", "请选择要删除的数据！");
	        return;
	    }
	    var strIds = [];
	    for ( var i = 0; i < selectedRows.length; i++) {
	        strIds.push(selectedRows[i].id);
	    }
	    var ids = strIds.join(",");
	    $.messager.confirm("系统提示", "您确定要删除这<font color=red>"
	            + selectedRows.length + "</font>条数据吗？", function(r) {
	        if (r) {
	            $.post("${pageContext.request.contextPath}/user/delete.do", {
	                ids : ids
	            }, function(result) {
	                if (result.success) {
	                    $.messager.alert("系统提示", "数据已成功删除！");
	                    $("#dg").datagrid("reload");
	                } else {
	                    $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
	                }
	            }, "json");
	        }
	    });
	}
	
</script>

</body>
</html>