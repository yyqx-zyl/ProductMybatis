<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- 格式化标签 -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 引用bootstarp的资源信息 -->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/css/bootstrap.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.4.1.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
		<table class="table table-hover">
			<tr>
				<th>用户编号</th>
				<th>用户名</th>
				<th>家庭地址</th>
			</tr>
			<c:forEach items="${list }" var="u">
				<tr>
					<td>${u.id }</td>
					<td>${u.pname }</td>
					<td>${u.paddress }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>