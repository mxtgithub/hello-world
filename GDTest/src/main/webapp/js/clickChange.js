

		var index = 0;	
		function changeImg(){
		if (index == 3) {
		index =0;
		}
		var current = index + 1;
		document.getElementById('im1').src = "ecgPicture/GPGR/"+current + ".png";
		index++;
		setTimeout("changeImg()",1000);
		
		}

		//点击切换图片和相对应的数据
		function clickChangeDiv1() {
			style="visibility: none;"  
			document.getElementById('showMsg0').style.visibility="visible";
			document.getElementById('showMsg1').style.visibility="hidden";
			document.getElementById('im1').style.visibility="hidden";
			document.getElementById('im0').style.visibility="visible";
		}
		function clickChangeDiv2() {
			style="visibility: none;"  
			document.getElementById('showMsg1').style.visibility="visible";
			document.getElementById('showMsg0').style.visibility="hidden";
			document.getElementById('im0').style.visibility="hidden";
			document.getElementById('im1').style.visibility="visible";
		}