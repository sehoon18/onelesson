<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 탈퇴하기</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
   <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    
    
    
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

		span{
		box-sizing: 20px;
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
        
      
        
        /* SECTION - BIRTH */
.info#info__birth {
  display: flex;
}

.info#info__birth select {
  margin-left : 7px;
}

.info#info__birth select:first-child {
  margin-left : 0px;
}
        
 .info#info__birth select::-webkit-scrollbar {
  width: 10px;
}

.info#info__birth select::-webkit-scrollbar-thumb {
  background-color: #b6b6b6;
  border-radius: 3px;
}

.info#info__birth select::-webkit-scrollbar-track {
  background-color: #ebe9e9;
  border-radius: 6px;
}       
        
        
        
        
        /*이메일*/
        select.box {
  width: 100%;
  height: 50px;
  box-sizing: border-box;
  margin-left: 5px;
  padding: 5px 0 5px 10px;
  border-radius: 4px;
  border: 1px solid #d9d6d6;
  color: #383838;
  background-color: #ffffff;
  font-family: 'Montserrat', 'Pretendard', sans-serif;
}

option {
  font-size: 16px;
}

.info .box#domain-list option {
  font-size: 14px;
  background-color: #ffffff;
}
        
        

    </style>
</head>
<body>

<div style="width: 800px;">
    <form action="${pageContext.request.contextPath}/member/resignPro" method="POST">
    <h1 class="h3 mb-3 fw-normal" style="text-align: left;">회원 탈퇴</h1>
       
    <div class="col">
						<div class="input-group">
							<span class="form-floating">
								<input type="text" name="id"
									class="form-control input-cc inputId" id="floatingId"
									maxlength="40" value="${memberDTO.id }"><label for="floatingId">아이디</label>
								<font id="checkId" size="2"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</span>
						</div>
					</div>
   		
   		<div class="col">
						<div class="input-group">
							<div class="form-floating">
								<input type="password" name="pass"
									class="form-control input-cc inputPw" id="floatingPassword"
									maxlength="40" placeholder=""> 
									<label for="floatingPassword">비밀번호</label>
<!-- 								<div class="password-hints"> -->
<!-- 									<font class="hint1" color="red">대소문자 &#10003;</font> <font -->
<!-- 										class="hint2" color="red">숫자 &#10003;</font> <font -->
<!-- 										class="hint3" color="red">특수문자 &#10003;</font> <font -->
<!-- 										class="hint4" color="red">8~20자 이내 &#10003;</font> -->
<!-- 								</div> -->
							</div>
						</div>
					</div>

        <button type="submit" class="backPage">탈퇴하기</button>
        <button type="button" class="backPage" onclick="location.href='${pageContext.request.contextPath}/member/mypage'">메인으로</button>
    </form>
</div>
    
</body>
</html>