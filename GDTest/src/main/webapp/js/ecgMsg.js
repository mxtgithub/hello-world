
	    $(function(){
	    	$("#table2").hide();
	    	$("#source").click(function(){
	    		//清除img标签
	    	$("#tb1").empty();
	    	$("#tbody2").empty();
	    	$("#table2").hide();
	    	//获取p_id
	    	var p_id = $("#p_id").text().trim();
	    	//alert(p_id);
			$.ajax({
			url : "http://localhost:8080/GDTest/load.do",
			type:'post',
			data:{'p_id':p_id},
			success : function(data) {
				for(i = 0; i < 2; i ++){
					var e = data[i];
					//alert(e.type);
					$("#tb1").append('<img src="'+e.imgPath+'">');
				}
			},
			dataType : 'json'
		});
		});
	    		    	
	    	$("#lvbo").click(function(){
	    	//清除img标签
	    	$("#tb1").empty();
	    	$("#tbody2").empty();
	    	$("#table2").hide();
	    	//获取p_id
	    	var p_id = $("#p_id").text().trim();
	    	//alert(p_id);
			$.ajax({
			url : "http://localhost:8080/GDTest/loadLvBo.do",
			type:'post',
			data:{'p_id':p_id},
			success : function(data) {
				for(i = 0; i < 1; i ++){
					var lvbo = data[i];
					//alert(e.type);
					//$("#tb1").append('<img src="/ecg0604/ecgPicture/jiance/rxs01.png">');
					//$("#tb1").append('<img src="/ecg0604/ecgPicture/jiance/rxs01.png">');
					//alert(lvbo.p3);
					$("#tb1").append('<img src="/GDTest/'+lvbo.p3+'">'
							+'<img src="/GDTest/'+lvbo.p4+'">'
					);
				}
			},
			dataType : 'json'
		});
		});
	    	
	        $("#jiance").click(function(){
	        	//清除img标签
	    	$("#tb1").empty();
	    	$("#tbody2").empty();
	    	$("#table2").show();
	    	//获取p_id
	    	var p_id = $("#p_id").text().trim();
	    	alert(p_id);
	    	//alert(p_id);
			$.ajax({
			url : "http://localhost:8080/GDTest/loadJianCe.do",
			type:'post',
			data:{'p_id':p_id},
			success : function(data) {
				for(i = 0; i < 1; i ++){
					var e = data[i];
					//alert(e.type);
					//$("#tb1").append('<img src="F:/ecg/ecgPicture/jiance/rxs_j_1.png">');
					$("#tb1").append('<img  src="/GDTest/'+e.img_path+'">');
					$("#tbody2").append(
									'<tr>',
										'<th>'+e.r_r+'</th>',
										'<th>'+e.r_number+'</th>',
										'<th>'+e.heart_rate+'</th>',
									'</tr>'
						);
				}
			},
			dataType : 'json'
		});
		});
	        
	        
	        $("#zhenduan").click(function(){
	        	//清除img标签
	    	$("#tb1").empty();
	    	$("#tbody2").empty();
	    	$("#table2").hide();
	    	//获取p_id
	    	var p_id = $("#p_id").text().trim();
	    	//alert(p_id);
			$.ajax({
			url : "http://localhost:8080/GDTest/loadJianCe.do",
			type:'post',
			data:{'p_id':p_id},
			success : function(data) {
				for(i = 0; i < 1; i ++){
					var e = data[i];
					//alert(e.type);
					$("#tb1").append(
						'<p>RR间期：'+e.r_r+'</p>',
						'<p>R个数：'+e.r_number+'</p>',
						'<p>心率：'+e.heart_rate+'</p>',
						'<p>心电信号处理结果：激动传导失常</p>',
						'<p>心脏健康评估：</p>',
						'1.左房左室增大，主动脉窦部稍增宽。</br>',
						'2.主动动脉降低，左室舒张功能减退。'
					);
				}
			},
			dataType : 'json'
		});
		});
	});