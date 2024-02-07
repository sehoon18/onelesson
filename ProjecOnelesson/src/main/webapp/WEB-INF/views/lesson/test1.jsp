<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/lesson/lessonInsertPro" method="post">
<input type="text" name="subject">
<input type="text" name="content">
<input type="file" name="preview">
<input type="date" name="date">
<input type="number" name="price">
<input type="text" name="subCategory">
<input type="submit" value="제출">

</form>
</body>
</html>
