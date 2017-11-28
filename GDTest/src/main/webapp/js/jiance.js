			$(function(){
				
				//1 点击text框去掉span的提示信息
				$("#filename").focus(function(){
						//alert("++++==");
						$("#1_msg").html("");
					});
				$("#pic1name").focus(function(){
						//alert("++++==");
						$("#2_msg").html("");
					});
				$("#pic2name").focus(function(){
						//alert("++++==");
						$("#3_msg").html("");
					});
				$("#submit").click(sendAjax);
			});	    
	    	function sendAjax(){
	    		var aaa = getCookie("aaa");
	    		alert(aaa);
	    		var p_id = aaa.charAt(3,4)
	    		alert("p_id:"+p_id);
	    		//获取p_id
	    		//var p_id = getCookie("p_id");
	    		//alert(p_id);

	    		//获取文件名字
	    		var filename = $("#filename").val().trim();
	    		//alert(filename);
	    		//获取p1,p2
	    		var p1 =  $("#pic1name").val().trim();
	    		var p2 =  $("#pic2name").val().trim();
	    		//alert(p1);
	    		//alert(p2);
	    		//判断
	    		var flag = true;
	    		if(p_id == "" || p_id == null) {
	    			alert("p_id不能为空");
	    			flag = false;
	    		}
	    		if(filename == "") {
	    			$("#1_msg").html("filename不能为空");
	    			flag = false;
	    		}
	    		if(p1 == "") {
	    			$("#2_msg").html("p1不能为空");
	    			flag = false;
	    		}
	    		if(p2 == "") {
	    			$("#3_msg").html("p2不能为空");
	    			flag = false;
	    		}
	    		
				//发送请求
					if(flag) {
						$.ajax({
							url:"saveJianCe.do",
							type:"post",
							data:{"p_id":p_id,
								"filename":filename,
								"p1":p1,
								"p2":p2},
							success:function(result){
								window.location.href="getPersonR";
								if(result.status == 0) {//正确
									
								}
							},
							error:function() {
								alert("注册异常！");
							}
							
						});
					}
	    		
	    	}