$(function(){
	init(1);
});

function init(_pageNo){
	$("tr[name=infoTr]").remove();
	$.ajax({
		dataType : "json",
		type : "POST",
		async:false,
		url : window.contextPath+"/bpmanageQueryList?page="+_pageNo,
		success : function(data) {
			if(data.result=="success"){
				
				var list = data.list;//alert(JSON.stringify(data));
				var html = "";
				for(var i=0;i<list.length;i++){
					html = html + "<tr name='infoTr'><th>" + list[i].id + "</th>" +
								  "<th>" + list[i].truename + "</th>" + 
								  "<th>" + list[i].gender + "</th>" + 
								  "<th>" + list[i].age + "</th>" +  
								  "<th>" + list[i].symptom + "</th>" +
								  "<th><input type='button' value='修改' onclick='edit(" + list[i].id + ")'/><input type='button' value='删除'/></th></tr>";
				}
				$("#content").append(html);
				$("#pageNo").html(data.pageNo);
				if(data.pageNo==1){
					
				}else{
					$("#upPage").attr("onclick", "init("+(_pageNo-1)+");");
				}
				if(list.length!=10){
					
				}else{
					$("#downPage").attr("onclick", "init("+(_pageNo+1)+");");
				}
				
			}else{
				alert(data.errorMsg);
			} 
			}
		});
}

function edit(_id){
	top.location.href=window.contextPath+"/views/insertBloodmanagePage.jsp?id="+_id;
}