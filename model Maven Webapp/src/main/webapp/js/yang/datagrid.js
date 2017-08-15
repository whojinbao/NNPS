$(function(){
	 data.init();
})
var data = {
		init:function(){
			 data.search();
			 data.click();
			 data.grid();
			 data.dialog();
				
		},
	 	search:function(){
	 		$("#selectbtn").click(function(){
		     	console.info(serializeObject($("#dform").form()));
		     	$('#dg').datagrid('load',serializeObject($("#dform").form()))
		     })
		     
		     $("#clearbtn").click(function(){
		    	 $('#dg').datagrid('load',{});
		    	 $('#dform').form().find('input').val('');
		     })
		
			function serializeObject(form){/* 将form表单序列化成一个对象*/
				var o = {};
				$.each(form.serializeArray(),function(index){
					if(o[this['name']]){
						o[this['name']] = o[this['name']] + "," + this['value'];
					}else{
						o[this['name']] = this['value'];
					}
				});	
				return o;
			}
	 	},
	 	
		dialog:function(){
			$('#dd').dialog({    
			    title: 'My Dialog',    
			    width: 400,    
			    height: 200,    
			    closed: true,    
			    cache: false,      
			    modal: true,
			    buttons:[{
					text:'保存',
					handler:function(){
						$.messager.progress();
						$('#myform').form('submit', {    
						    url:"yang/insert",    
						    onSubmit: function(param){    
						        param.name = $("#name").val();    
						        param.age = $("#age").val();
						        param.job = $("#job").val();
						        param.sal = $("#sal").val();
						        var isValid = $(this).form('validate');
						        if (!isValid){
									$.messager.progress('close');	// 如果表单是无效的则隐藏进度条
								}
								return isValid;	// 返回false终止表单提交
						           
						    },  
						    success:function(data){    
						        if(data=="success"){
						        	$('#dd').dialog("close");
						        	$.messager.progress('close');	// 如果提交成功则隐藏进度条
						        	$('#dg').datagrid("reload");
						        	
						        }    
						    }    
						});
					}
				},{
					text:'取消',
					handler:function(){
						if(confirm("确定取消吗？")){
							$('#dd').dialog("close");
						}
					}
				}] 
			});
		},
		click:function(){
			$("#addbtn").click(function(){
				$('#dd').dialog("open");
			});
			$("#editbtn").click(function(){
				var rows = $('#dg').datagrid("getSelections");
				if(rows.length==0){
					$.messager.alert('提示','请选择一条记录进行编辑');    
				}else if(rows.length!=1){
					$.messager.alert('提示','只能选择一条记录进行编辑');
				}else{
					
				}
			});
			$("#delbtn").click(function(){
				var rows = $('#dg').datagrid("getChecked");
				alert(rows);
				var	num = new Array();
				for(var i=0;i<rows.length;i++){
					num.push(rows[i].id);
				}
				alert(num);
				var str = num.join(",");
				$('#myform').form('submit', {    
				    url:"yang/del",    
				    onSubmit: function(param){    
				        param.str = str;    
				    },  
				    success:function(data){
				    	alert(data);    
				        if(data=="success"){
				        	$('#dg').datagrid("clearChecked");
				        	$('#dg').datagrid("reload");
				        }
				    }    
				});
				
			});
		},
		grid:function(){
			$('#dg').datagrid({    
			    url:'yang/data',
			    fitColumns:true,
			    pagination:true,
			    striped:true,
			    idField:'id',
			    columns:[[    
			        {field:'id',title:'编号',width:100,checkbox:true},    
			        {field:'name',title:'姓名',width:100},    
			        {field:'age',title:'年龄',width:100},
			        {field:'job',title:'工作',width:100},
			        {field:'sal',title:'工资',width:100}    
			    ]],
			    toolbar: [{
			    	text:'增加',
					iconCls: 'icon-edit',
					handler: function(){alert('编辑按钮')}
				},'-',{
					text:'增加',
					iconCls: 'icon-help',
					handler: function(){alert('帮助按钮')}
				}]
			}); 
		}
}