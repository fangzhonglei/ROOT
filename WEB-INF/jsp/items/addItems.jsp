<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	商品添加
</title>
</head>
<body>
<c:if test="${allErrors!=null }">
	<!-- 显示错误信息 --> 
	<c:forEach items="${allErrors}" var="error">
	${error.defaultMessage }<br/>
	</c:forEach>
</c:if>
 	<form action="${pageContext.request.contextPath}/items/saveItems.action" method="post" enctype="multipart/form-data" >
		<input type="text" name="name"  />
		<input type="text" name="price" />
		<input type="text" name="detail" />
		<input type="text" name="createtime" />
		<input type="file" name="itemsPic" />
		<input type="submit" value="增加">
	</form>
</body>
</html>