 $(function() {
			// 1 点击text框去掉span的提示信息		
		$("#createDate").focus(function(){
			//alert("++++==");
			$("#createDate_msg").html("");
		});
	$("#createdBy").focus(function(){
			//alert("++++==");
			$("#createdBy_msg").html("");
		});
	$("#community").focus(function(){
			//alert("++++==");
			$("#community_msg").html("");
		});
	$("#doctor").focus(function(){
		//alert("++++==");
		$("#doctor_msg").html("");
	});
 //$("#doctorNumber").focus(function(){
//	//alert("++++==");
//		$("#doctorNumber_msg").html("");
//	});
 $("#ecgAttribute").focus(function(){
		//alert("++++==");
		$("#ecgAttribute_msg").html("");
	});

			$("#submit").click(function(){
				//var ecgData=$("#ecgData").val().trim();
				var ecgData=$("#dataname").val().trim();
				//var postfix=$("#postfix").find("option:selected").text().trim();
				var type=$("#type").find("option:selected").text().trim();
				var community=$("#community").val().trim();
				var doctor= $("#doctor").val().trim();
				var ecgAttribute=$("#ecgAttribute").val().trim();
				var createDate = $("#createDate").val().trim();
				var createdBy=$("#createdBy").val().trim();
				//var doctorNumber=$("#doctorNumber").val();
				var  idNumber= $("#idNumber").text().trim();
				//console.log(idNumber);
				
				//alert(ecgData);
//				alert("-name--:"+ecgData);
//				alert(community);
//				alert(doctor);
//				alert(ecgAttribute);
//				alert(createDate);
//				alert(createdBy);
				  //alert(doctorNumber);
//				  alert("-idn--:"+idNumber);
				 alert(type);
				//2 判断是否为空
				var flag = true;
				/*
				if(createDate == "") {
					$("#createDate_msg").html("创建日期不能为空");
					flag = false;
				}
				if(createdBy == "") {
					$("#createdBy_msg").html("建档人不能为空");
					flag = false;
				}
				if(community == "") {
					$("#community_msg").html("主治社区不能为空");
					flag = false;
				}
				if(doctor == "") {
					$("#doctor_msg").html("主治医生不能为空");
					flag = false;
				}
				if(doctorNumber == "") {
					$("#doctorNumber_msg").html("医生工号不能为空");
					flag = false;
				}
*/
					//3 发送ajax请求
					if(true) {
						$.ajax({
							url:"http://localhost:8080/GDTest/save",
							type:"post",
							data:{
								"idNumber":idNumber,
								"ecgData":ecgData,
								"type":type,
								"createDate":createDate,
								"createdBy":createdBy,
								"community":community,
								"doctor":doctor,
								"ecgAttribute":ecgAttribute},
							success:function(result){
								if(result.status == 0) {//正确
									alert(result.msg);
								}
							},
							error:function() {
								alert("新建资料异常！");
							}
							
						});
					}
				
			})

		})
