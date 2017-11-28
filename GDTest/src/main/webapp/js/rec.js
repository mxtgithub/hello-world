
//对查找医生部分进行非空验证
function searchDoc()
{
	
	var id=$("#docid").val() ;
	var section=$("#section").val();
	var name=$("#name").val() ;
	var idlength=id.length ;
	var sectionlength = section.length ;
	var namelength = name.length  ;
	if(!(idlength==0&sectionlength==0&namelength==0))
	{
		form1.submit() ;
	}
	else
	{
		var erroeid=$("#error");
		erroeid.html("至少有一个值不为空");
	}
	
}


//对医生信息的添加进行非空验证
function checkAddDoctor()
{
	var id=$("#id").val() ;
	var name1=$("#name1").val();
	var pwd = $("#pwd").val() ;
	var age =$("#age").val() ;
	var address=$("#address").val() ;
	var tel= $("#tel").val();
	var email= $("#email").val() ;
	var position = $("#position").val() ;
	var description = $("#description").val() ;
	var maxquantity = $("#maxquantity").val() ;
	var havequantity = $("#havequantity").val() ;
	var file = $("#file").val();
	var section1=$("#section1").val();
	var c1 =check(id,iderror) ;
	var c2 =check(section1,sectionerror) ;
	var c3 =check(name1,nameerror) ;
	var c4 =check(pwd,pwderror) ;
	var c5 =check(age,ageerror) ;
	var c6 =check(address,addresserror) ;
	var c7 =check(tel,telerror) ;
	var c8 =check(email,emailerror) ;
	var c9 =check(position,positionerror) ;
	var c10 =check(description,descriptionerror) ;
	var c11 =check(maxquantity,maxquantityerror) ;
	var c12 =check(havequantity,havequantityerror) ;
	var c13 =check(file,fileerror);
	if(c1&c2&c3&c4&c5&c6&c7&c8&c9&c10&c11&c12&c13)
	{
		document.form1.submit() ;
	}

}




//function ltrim(str) { 
//for(var k = 0; k < str.length && isWhitespace(str.charAt(k)); k=k+1)
//	return str.substring(k, str.length);
//}
//function rtrim(str) {
//for(var j=str.length-1; j>=0 && isWhitespace(str.charAt(j)) ; j=j-1) 
//	return str.substring(0,j+1);
//}
//function trim(str) 
//{
//	return ltrim(rtrim(str));
//}
//
//
//function isWhitespace(charToCheck) {
//	var whitespaceChars = " \t\n\r\f";
//	return (whitespaceChars.indexOf(charToCheck) != -1);
//}

//对给定的id进行非空验证
function check(id,errorNode)
{
	
	//alert(id);
	if(id.length == 0)
	{
		errorNode.innerHTML="当前值不能为空！！！";
		return false ;
	}
	else
	{
		errorNode.innerHTML="" ;
		return true ;
	}
	
}