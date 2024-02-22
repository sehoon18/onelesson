<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <meta charset="UTF-8">

    <title>비활성계정 안내</title>
    
    <style>
    h1{
    	text-align:center;
    }
    
    body{
    		font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: auto;
    }
    
    #box{
    	width: 900px;
    	background-color: #fff;
            margin: 80px;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            justify-content: center;
    }
    
    
    .content {
        display: none; /* 초기에는 내용이 감춰짐 */
    }
    </style>
    
    </head>
<body>
<jsp:include page="../inc/header.jsp" />
    
<div id="box">
<h3><b>비활성 계정 안내</b></h3>
<br>
<p>안녕하세요, 회원님!</p>

<p>현재 회원님의 계정은 비활성 상태로 설정되어 있습니다. 이는 일정 기간 동안 회원탈퇴 또는 로그인 활동이 오랫동안 없어서 발생한 것입니다. 회원님의 계정을 다시 활성화하려면 아래 안내에 따라 조치를 취해주시기 바랍니다.</p>

<ul>
<li>고객센터 문의: 비활성 계정을 활성화하기 위해 고객센터로 전화 문의해 주세요. 아래 고객센터 연락처를 이용하여 직접 문의하실 수 있습니다. 고객센터 전화번호: 010-1234-5678 고객센터 운영시간: 월요일부터 금요일까지 09:00 ~ 18:00
</li>
<li>계정 활성화 신청: 아래 신청 버튼을 클릭하여 계정 활성화 절차를 진행해 주세요. 안내에 따라 신청을 완료해 주시면 회원님의 계정이 활성화되고, 로그인이 가능해집니다.
</li>
</ul>
<p>계정 활성화 절차를 완료하신 후에는 정상적으로 로그인하여 회원님의 서비스를 이용하실 수 있습니다.</p>
<p>감사합니다.</p>
    <button onclick="showContent()" class="btn btn-outline-secondary btn-sm">계정 활성화 신청</button>
    <div id="content" class="content" style="padding-top: 30px;">
        <h5>계정 활성화 신청</h5>
        <p>회원님의 계정을 활성화하기 위해 신청 페이지로 안내해 드립니다. 아래 안내에 따라 아이디와 전화번호를 입력하여 신청해주시기 바랍니다.</p>

<form style="padding-bottom: 50px;" action="${pageContext.request.contextPath}/member/inactivePro" method="post">
<!-- id -->
<div style="padding: 10px 0px;">
    <div class="col">
			<div class="input-group">
				<span class="form-floating">
					<input type="text" name="id"
						class="form-control input-cc inputId" id="floatingId"
						maxlength="40"><label for="floatingId">아이디</label>
					<font id="checkId" size="2"
						class="position-absolute top-50 start-20 translate-middle-y"
						style="right: 9px; margin-top: 2px"></font>
				</span>
			</div>
	</div>
<!-- 			1. 생년월일 확인 -->
        		 <div class="col">			
        			<div class="input-group">
							<div class="form-floating">
						    <input type="text" name="phone" class="form-control input-cc inputPhone" id="floatingTel" >
						    <label for="floatingTel"><span>연락처</span></label>
								<font id="checkPhone" size="2" 
								class="position-absolute top-50 start-20 translate-middle-y" 
								style="right: 9px; margin-top: 2px"></font>
						     </div>
						</div>
					</div>
					</div>
					<input type="submit" value="신청" class="btn btn-outline-secondary btn-sm">
</form>						
			<p>아이디와 전화번호를 입력한 후, 신청을 완료해 주세요. 신청이 완료되면 관리자 승인 후 회원님의 계정이 활성화되어 로그인이 가능해집니다.
			신청 시 입력한 정보는 회원님의 개인 정보 보호를 위해 안전하게 처리되며, 본인 확인 및 계정 보안을 위한 목적으로만 사용됩니다.</p>
    </div>

</div>

    <script>
        function showContent() {
            var content = document.getElementById("content");
            if (content.style.display === "none") {
                content.style.display = "block"; // 내용 펼치기
            } else {
                content.style.display = "none"; // 내용 감추기
            }
        }
    </script>
    <script th:inline="javascript">
	    var message = '${message}';
	    
	    if (message) {
	        alert(message);
	    }
	</script> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>