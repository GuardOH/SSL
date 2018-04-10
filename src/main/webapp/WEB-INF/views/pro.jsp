<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
 <script src="<%= path %>/js/jquery.min.js"></script>
  <script type="text/javascript">
  
   	//当省份选项发生变化时
   	$(document).ready(function(){
   		$("#pro").change(function(){
   	    	//拿到变化了的id编号
   	    		var id = $("#pro").val();
   	    		$.ajax({
   	    			type:"POST",
   	    			url:"getCity?id="+id,
   	    			dataType:"json",
   	    			contentType:"application/json",
   	    			/* 这里data拿到的其实是controller传来的citylist */
   	    			success:function(data){
   	    				/* alert("过来了，success???"+id); */
   	    			var name = $("#city").val();
   	    			document.getElementById("city").options.length=1;
   	    		    for(var i=0;i<data.length;i++){
   	    		    	$("#city").append("<option>"+data[i].c_cname+"</option>");
   	    		    }
   	    			}
   	    		})
   	    		});
   	    	});
   
    	
   	</script>
<body>
  请选择您的位置：
  		<select id="pro">
  			<option >-----请选择省份-----</option>
  		<c:forEach items="${list}" var="c">
  			<option value="${c.t_cid}">${c.t_sname}</option>
  		</c:forEach>
  			
  	</select>
  	<select id="city">
  			<option>-----城市选择-----</option>
  	</select>
</body>
</html>