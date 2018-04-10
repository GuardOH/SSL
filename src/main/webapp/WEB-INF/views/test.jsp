<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script src="<%= path %>/js/jquery.min.js"></script>
  <script type="text/javascript">
function typeChange(){
var type=$("#faulttype").val();
 
var html = "<option>--请选择--</option>"; 
var CommitUrl = "getCity1.do?id=" + type;
 
$.ajax( {
type : "POST",
contentType : "application/json",
url : CommitUrl,
dataType : 'json',
success : function(result){
var Curedata = $.extend(true, [], result); 
if (Curedata.childType != null) { 
for(var i=0;i<Curedata.childType.length;i++){
 
html+="<option value='"+Curedata.childType[i].faultId+"'>"+Curedata.childType[i].faultContent+"</option>";
}
$("#faulttype1").empty();
$(html).appendTo("#faulttype1") ;
 
} }
});
}
	</script>
<body>
<div class="col-sm-3">
<div class="form-group">
<label class="col-3 control-label no-padding-right">
故障类型： </label>
<select name="faulttype" id="faulttype" onchange="javascript:typeChange()">
<c:forEach items="${faultlist}" var="faulist">
<option value="${faulist.faultId}">${faulist.t_sname}</option>
</c:forEach>
</select>
 
</div>
</div>
<div class="col-sm-3">
<div class="form-group">
 
<select name="faulttype1" id="faulttype1">
<option>--请选择--</option>
<c:forEach items="${childType}" var="faulist">
<option value="${faulist.faultId}">${faulist.t_cname}</option>
</c:forEach>
</select>
</div>
</div>

</body>
</html>