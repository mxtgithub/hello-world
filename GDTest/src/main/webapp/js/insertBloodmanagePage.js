var id = $("#id").val();
$(function(){
	id=$("#id").val();
	if(null!=id&&""!=id&&"null"!=id){
		//init(id);
		$("#title").html("修改高血压病例");
	}
});

function init(_id){
	/*$.ajax({
		dataType : "json",
		type : "POST",
		async:false,
		url : window.contextPath+"/queryBaseinfo?id="+_id,
		success : function(data) {
			if(data.result=="success"){
				
				var list = data.list;//alert("list="+JSON.stringify(list));
				$("#userName").val(list.username);
				$("#identity").val(list.identity);
				$("#trueName").val(list.truename);
				$("#gender").val(list.gender);
				$("#age").val(list.age);
				$("#height").val(list.height);
				$("#weight").val(list.weight);
				$("#bloodtype").val(list.bloodtype);
				$("#nativePlace").val(list.nativeplace);
				$("#birthdate").val(dateFmt(list.birthdate));
				$("#idNumber").val(list.idnumber);
				$("#telNumber").val(list.telnumber);
				$("#address").val(list.address);
				$("#profession").val(list.profession);
				$("#fileNum").val(list.filenum);
				$("#familyNum").val(list.familynum);
				$("#medicalCard").val(list.medicalcard);
				$("#attribute").val(list.attribute);
				$("#buildAchive").val(list.buildachive);
				$("#buildDate").val(dateFmt(list.builddate));
				$("#keyBorder").val(list.keyborder);
				
			}else{
				alert(data.errorMsg);
			} 
		}
	});*/
}

function submit(){
	/*var username = $("#userName").val();
	var identity = $("#identity").val();
	var truename = $("#trueName").val();
	var gender = $("#gender").val();
	var age = $("#age").val();
	var height = $("#height").val();
	var weight = $("#weight").val();
	var bloodtype = $("#bloodtype").val();
	var nativeplace = $("#nativePlace").val();
	var birthdate = submitDate($("#birthdate").val());
	var idnumber = $("#idNumber").val();
	var telnumber = $("#telNumber").val();
	var address = $("#address").val();
	var profession = $("#profession").val();
	var filenum = $("#fileNum").val();
	var familynum = $("#familyNum").val();
	var medicalcard = $("#medicalCard").val();
	var attribute = $("#attribute").val();
	var buildachive = $("#buildAchive").val();
	var builddate = submitDate($("#buildDate").val());
	var keyborder = $("#keyBorder").val();
		
	var baseinfo = {
		username : username,
		identity : identity,
		truename : truename,
		gender : gender,
		age : age,
		height : height,
		weight : weight,
		bloodtype : bloodtype,
		nativeplace : nativeplace,
		birthdate : birthdate,
		idnumber : idnumber,
		telnumber : telnumber,
		address : address,
		profession : profession,
		filenum : filenum,
		familynum : familynum,
		medicalcard : medicalcard,
		attribute : attribute,
		buildachive : buildachive,
		builddate : builddate,
		keyborder : keyborder
	};
	if(null!=id&&""!=id&&"null"!=id){
		baseinfo["id"]=id;
	}
	//alert(JSON.stringify(baseinfo));
	$.ajax({
		dataType : "json",
		type : "POST",
		async:false,
		url : window.contextPath+"/submitBaseinfo",
		data : baseinfo,
		success : function(data) {
			if(data.result=="success"){
				
				alert("data="+JSON.stringify(data));
				
			}else{
				alert(data.errorMsg);
			} 
		}
	});*/
}

function dateFmt(_dateStr){
	var tempDate = new Date(_dateStr);
	return tempDate.getFullYear()+"-"+(tempDate.getMonth()+1)+"-"+tempDate.getDate()+" "+tempDate.getHours()+":"+tempDate.getMinutes()+":"+tempDate.getSeconds();
}

function submitDate(_dateStr){
	var strList = _dateStr.split(" ");
	var date = strList[0].split("-");
	var time = strList[1].split(":");
	var submitTime = new Date();
	submitTime.setFullYear(date[0], date[1], date[2]);
	submitTime.setHours(time[0], time[1], time[2], "");
	return submitTime;
}