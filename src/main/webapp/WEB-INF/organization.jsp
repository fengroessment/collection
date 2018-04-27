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

<title>催债系统</title>
</head>
<body>
	<div style="margin:0px 0;">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="add()">增加</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="amend()">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="cancel()">删除</a>
	</div>
	<table id="tg" class="easyui-treegrid" title="Editable TreeGrid" style="width:1000px;height:250px"
			data-options="
				iconCls: 'icon-ok',
				rownumbers: true,
				animate: true,
				collapsible: true,
				fitColumns: true,
				url: 'organizationList.do',
				method: 'get',
				idField: 'id',
				treeField: 'name',
				showFooter: true
			">
		<thead>
			<tr>
				<th data-options="field:'id',width:0" style="display:none;" >机构ID</th>
				<th data-options="field:'name',width:180,editor:'text'">机构名称</th>
				<th data-options="field:'type',width:60,align:'right',editor:'numberbox'">机构类型</th>
				<th data-options="field:'post_code',width:80,editor:'datebox'">机构编号</th>
				<th data-options="field:'principal_id',width:80,editor:'datebox'">负责人</th>
				<th data-options="field:'address',width:80,editor:'datebox'">地址</th>
				<th data-options="field:'phone',width:80,editor:'datebox'">电话号码</th>
				<th data-options="field:'postCode',width:80,editor:'datebox'">邮政编码</th>
				<th data-options="field:'fax',width:80,editor:'datebox'">传真号</th>
				<th data-options="field:'create_time',width:80,editor:'datebox'">创建时间</th>
				<th data-options="field:'modify_time',width:120,formatter:formatProgress,editor:'numberbox'">修改时间</th>
				
			</tr>
		</thead>
	</table>
	
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
            closed="true" buttons="#dlg-buttons">
        <div class="ftitle">用户信息</div>
        <form id="fm" method="post" novalidate>
        	<div class="fitem" style="display:none;">
                <label>机构机构:</label>
                <input name="id" class="easyui-validatebox" required="true">
            </div>
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
                <input name="postCode" class="easyui-validatebox" required="true">
            </div>
            <div class="fitem">
                <label>传真号:</label>
                <input name="fax" class="easyui-validatebox" required="true">
            </div>
        </form>
    </div>
	
	<div id="addwin" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:300px;padding:5px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding:10px;">
			</div>
		</div>
	</div>
	

	<div id="amendwin" class="easyui-window" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:300px;padding:5px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding:10px;">
				<%-- <jsp:include page="amendOrg.jsp"/> --%>
			</div>
			
		</div>
	</div>
	
	<div id="cancelwin" class="easyui-dialog" title="Window Layout" closed="true" data-options="iconCls:'icon-save'" style="width:500px;height:100px;padding:5px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'center'" style="padding:10px;">
				<div id="dlg-buttons">
					<table cellpadding="0" cellspacing="0" style="width:100%">
						<tr>
							<td>
								你确定要修改吗？
							</td>
							<td style="text-align:right">
								
								<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-save" onclick="sure()">确定</a> 
								<a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-cancel" onclick="function(){$('#cancelwin').dialog('close')}">取消</a>
							</td>
						</tr>
					</table>
				</div>
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
	
	function add(){
		
		$('#addwin').window('open')
		$('#addwin').window('refresh', 'gotoAddOrg.do');
	}
	
	function amend1(){
		 var row = $('#tg').treegrid('getSelected');
		if (row) {
			
			$('#amendwin').window('open')
			$('#amendwin').window('refresh', 'gotoAmendOrg.do?id='+row.id);
		}else {
			alert("请选择你要修改的参数")
		} 
		
	}
	
	function amend(){
        /* var row = $('#mTb').datagrid('getSelected'); */
       	var row = $('#tg').datagrid('getSelected');
        if (row!=null) {  
            $('#dlg').dialog('open').dialog('setTitle','修改'); 
            $('#fm').form('load',row);
              
        } else {  
            $.messager.alert("提示", "请选中要编辑的行！");  
        }  
    }
	
	function sure(){
		var jsondata=$("#fm").serialize();
		alert(jsondata);
        $.ajax({
        	   type: "POST",
        	   url: "updateById.do",
        	   data: jsondata,
        	   success: function(result){
        		   alert(result);
        	   }
        });
    }
	
	 function cancel(){
         var row = $('#tg').datagrid('getSelected');
         if (row != null){
             $.messager.confirm('确认','您确定要删除机构 ['+ row.name +'] 吗？',function(r){
                 if (r){
                     $.post('deleteByPrimaryKey.do',{id:row.id},function(result){
                         if (result.success){
                             $.messager.show({    // show error message
                                     title: '提示',
                                     msg: result.message
                                 });
                             $('#tg').datagrid('reload');    // reload the user data
                         } else {
                             $.messager.show({    // show error message
                                 title: '提示',
                                 msg: result.message
                             });
                         }
                     },'json');
                 }
             });
         }else{
        	 $.messager.alert("提示", "请选中要删除的行！");  
         }
     }
</script>
</body>
</html>