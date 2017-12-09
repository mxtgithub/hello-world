<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import='java.text.SimpleDateFormat,java.util.Date' %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>显示历史心率数据</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css"  href="/GDTest/css/person.css" />
<input type="" value="" size="1"/><td href="/GDTest/views/first.jsp">当前功能:远程监测管理》历史心率监测图表</td></br></br>
  <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
  <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
  <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
   </head>
  <body>
  <div id="container" stytle="min-width:200px;height:200px"></div>
  
  <script>
  /**
  * Highcharts 在 4.2.0 开始已经不依赖 jQuery 了，直接用其构造函数既可创建图表
 **/
var chart = new Highcharts.Chart('container', {
    title: {
        text: '心率数据监测图表',
        x: -20
    },

    xAxis: {
        categories: ['01:00','02:00', '03:00','04:00','05:00', '06:00','07:00', '08:00','09:00', '10:00', '11:00','12:00', '13:00','14:00', '15:00','16:00','17:00', '18:00','19:00', '20:00','21:00', '22:00','23:00']
    },
    yAxis: {
        title: {
            text: '心率 (bpm)'
        },
        plotLines: [{
            value: 0,
            width: 1,
            color: '#808080'
        }]
    },
    tooltip: {
        valueSuffix: 'bpm'
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle',
        borderWidth: 0
    },
    series: [{
        name: '马晓婷',
        data: [86,85,87, 86,85,84,86,98,87,86,79,75,76, 87, 97, 86, 80, 83, 88, 87, 86, 87, 88]
    }, {
    }]
});
  </script>
<center>
        <%out.print("时间");%>
        <%out.print("（");%>
        <span><%SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		out.println(df.format(new Date()));// new Date()为获取当前系统时间 %></span>
		<%out.print("）");%>
        <br>
       	 异常心率次数：<input type="text" name="listid">
       	 正常心率次数：<input type="text" name="listid">
       	 心率最高值：<input type="text" name="listid">
       	 心率最低值：<input type="text" name="listid">
</center>
  </body>
</html>
