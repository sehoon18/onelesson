<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OneLesson</title>
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


      


        
        <style>
        
          *{ 
        box-sizing: border-box;
        margin: 20;
        padding: 20;
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
             margin-bottom: 16px;
        }
        
    
    
    </style>

</head>


<body>

<!-- 본문내용 -->
<section class="joinpage">
<a class="navbar-brand" href="${pageContext.request.contextPath}/member/main">
<img alt="Brand" src="${pageContext.request.contextPath}/resources/images/logo.png" style="width: 300px; height: auto; ">
</a>
<br><br>
<article>
<div class="joinpage-container">

<form>
					
					<div class="d-grid gap-2">
						<button class="login-button-custom" type="button"  
						onclick= "location.href='${pageContext.request.contextPath}/member/memberAgreement1'">학생회원가입</button>
					</div>
					
					
					<div class="d-grid gap-2">
						<button class="login-button-custom" type="button" 
						onclick= "location.href='${pageContext.request.contextPath}/member/memberAgreement2'">강사회원가입</button>
					</div>
	</form>				
</div>
</article>
</section>

</body>
</html>