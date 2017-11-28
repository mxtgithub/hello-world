 $(function() {		

			$("#submit").click(function(){
				var createDate = $("#createDate").val().trim();
				var createdBy=$("#createdBy").val().trim();
				var community=$("#community").val().trim();
				var doctor= $("#doctor").val();
				var doctorNumber=$("#doctorNumber").val();
				var ecgData=$("#ecgData").val();
				var ecgAttribute=$("#ecgAttribute").val().trim();
				var  idNumber= $("#idNumber");
				console.log(idNumber);
				//2 判断是否为空
				var flag = true;
				
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

					//3 发送ajax请求
					if(flag) {
						$.ajax({
							url:"http://localhost:8080/GDTest/getEcg_ll/${idNumber}",
							type:"post",
							data:{
								"idNumber":idNumber,
								"ecgData":ecgData,
								"createDate":createDate,
								"createdBy":createdBy,
								"community":community,
								"doctor":doctor,
								"doctorNumber":doctorNumber,
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
