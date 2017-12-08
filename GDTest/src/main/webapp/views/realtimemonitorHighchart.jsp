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

  <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
  <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
  <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
   </head>
  <body>
  <div id="container" stytle="min-width:400px;height:400px"></div>
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
        data: [76,75,78, 89,70,84,86,98,78,88,79,75,76, 89, 97, 96, 80, 83, 88, 90, 76, 77, 78]
    }, {
    }]
});
  </script>
<center>
        <%out.print("时间");%><br>
        <span><%SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		out.println(df.format(new Date()));// new Date()为获取当前系统时间 %></span>
</center>
  </body>
</html>
