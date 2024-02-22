<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head xmlns:th="http://www.thymeleaf.org">
<meta charset="UTF-8">
<title>lesson/login.jsp</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


<!--     <link href="../login.css" rel="stylesheet"> -->
    
    
        <style>
        
        *{ 
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        	}
                
	h1{

		text-align: center;
        
	}
        

        
        body {
        width:410px;
		position: absolute;
		left: 50%;
		top: 50%;

		transform: translate(-50%, -50%);
        
        
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
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: black;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
    
    
    </style>
    
    
</head>
<body>


<!-- 본문내용 -->
<section class="login">
<article>
<h1>One lesson</h1>

<div class="login-container">
				<form action="${pageContext.request.contextPath}/member/memberLoginPro"  method="POST">
				<h1 class="h3 mb-3 fw-normal">로그인</h1>
					<div class="form-floating">
						<input type="text" class="form-control" id="floatingInput"
							name="id" placeholder="ID"> <label
							for="floatingInput">아이디</label>
					</div>
					<div class="form-floating">
						<input type="password" class="form-control" id="floatingPassword"
							name="pass" placeholder="Password"> <label
							for="floatingPassword">비밀번호</label>
					</div>

					<div class="d-grid gap-2">
						<button class="login-button-custom" type="submit">로그인</button>
					</div>
  	<div class="info">
					<span>
						<button type="button"
							style="border: none; background-color: transparent; font-size: 12px; color:black; border: none;"
							onclick= "location.href='${pageContext.request.contextPath}/member/memberFindId'">아이디 찾기</button>
					</span> <span>&nbsp;</span> <span>
						<button type="button"
							style="border: none; background-color: transparent; font-size: 12px; color:black; border: none;"
							onclick= "location.href='${pageContext.request.contextPath}/member/memberFindPass'">비밀번호 찾기</button>							
					</span> <span>&nbsp;</span> 
					<span>
						<button type="button"
							style="border: none; background-color: transparent; font-size: 12px; color:black; border: none;"
							onclick= "location.href='${pageContext.request.contextPath}/member/memberSelectPage'">회원가입</button>
					</span>
				</div>
</form>
</div>
</article>
</section>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->



<script th:inline="javascript">
    var message = '${message}';
    
    if (message) {
        alert(message);
    }
</script> 
</body>
</html>