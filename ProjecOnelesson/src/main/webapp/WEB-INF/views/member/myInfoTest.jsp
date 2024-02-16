<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 걔량</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: auto;
}
form {
    background-color: #fff;
    padding: 70px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: var(--bs-body-color);
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: var(--bs-body-bg);
    background-clip: padding-box;
    border: var(--bs-border-width) solid var(--bs-border-color);
    border-radius: var(--bs-border-radius);
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

</style>
</head>
<body>
<form action="${pageContext.request.contextPath}/lesson/joinPro" method="POST">
			<h1 class="title">회원 정보 수정</h1>
				<div class="col">
						<div class="input-group">
							<span class="form-floating">
								<input type="text" name="member_user_id"
									class="form-control input-cc inputId" id="floatingId"
									maxlength="40" placeholder="" readonly="아이디는 변경 불가"> <label for="floatingId">아이디는 변경 불가능 합니다.</label>
				</span>
				</div>
				</div>
				</form>

</body>
</html>