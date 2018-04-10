<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <title>地点选择</title>
    <script src="<%= path %>/js/jquery.min.js"></script>
    <script type="text/javascript">
    
    
    $(document).ready(function(){
    	$.post("getCity",function(data){
    	var obj = JSON.parse(data);/*parse 解析  */
    	var s = document.getElementById("pro");
    	/* 这里是拿到所有的省份 */
    	for (var i = 0; i < obj.length; i++)
			for (var j = 0; j < obj[i].length; j++) {
			/* 将省份及其编号添加到pro里 */
				s.options.add(new Option(obj[i][j].cname,obj[i][j].id));
			/* 	alert(obj[i][j].id+obj[i][j].cname); */
			}
    	});
    	
    	//当省份选项发生变化时
    	$("#pro").change(function(){
    	//拿到变化了的id编号
    		var id = $("#pro").val();
    		//getCity表示提交时的url路径，方式为post
    		$.post("getCity?id="+id,function(data){
    	      var obj=JSON.parse(data);
    	      var s = document.getElementById("city");
    	      s.length=1;
    	for (var i = 0; i < obj.length; i++)
			for (var j = 0; j < obj[i].length; j++) {
				s.options.add(new Option(obj[i][j].cname,obj[i][j].id));
			
			}
    		});
    	
    	});
    	
    });
    </script>
  </head>
  <body>
  请选择您的位置：
  	<select id="pro">
  			<option>-----请选择省份-----</option>
  	</select>
  	<select id="city">
  			<option>-----城市选择-----</option>
  	</select>
  </body>
</html>
