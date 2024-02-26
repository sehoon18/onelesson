<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 곧바로 이동하는 페이지</title>
<script type="text/javascript">
		alert("결제하신 레슨이 없습니다!!");
	window.location.href ="${pageContext.request.contextPath}/member/mypage";
</script>
</head>
<body>
<
</body>
</html>