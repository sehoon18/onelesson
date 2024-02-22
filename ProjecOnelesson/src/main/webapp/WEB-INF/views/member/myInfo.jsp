<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정</title>
    
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

        #formstyle {
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
<jsp:include page="../inc/header.jsp" />

<div style="width: 800px; margin: 100px auto;">
    <form id="formstyle" action="${pageContext.request.contextPath}/member/infoUpdate" method="POST">
    <h1 class="h3 mb-3 fw-normal" style="text-align: left;">회원 정보 수정</h1>
       
    <div class="col">
			<div class="input-group">
				<span class="form-floating">
					<input type="text" name="member_user_id"
						class="form-control input-cc inputId" id="floatingId"
						maxlength="40" value="${memberDTO.id }" readonly><label for="floatingId">아이디</label>
					<font id="checkId" size="2"
						class="position-absolute top-50 start-20 translate-middle-y"
						style="right: 9px; margin-top: 2px"></font>
				</span>
			</div>
	</div>
   		<br>
   		<hr>
   		<h6 align="center">비밀번호 변경</h6>
			<div class="col">
				<div class="input-group">
					<div class="form-floating">
						<input type="password" name="pass"
							class="form-control input-cc inputPw2"
							id="floatingCheckPassword" maxlength="40" placeholder="">
						<label for="floatinCheckPassword">현재 비밀번호</label> 
					</div>
				</div>
			</div>
					
			<div class="col">
				<div class="input-group">
					<div class="form-floating">
						<input type="password" name="npass"
							class="form-control input-cc inputPw" 
							id="floatingPassword" maxlength="40" placeholder=""> 
						<label for="floatingPassword">새로운 비밀번호</label>
						<font id="pwCheck" size="2" color="red"
							class="position-absolute top-50 start-20 translate-middle-y"
							style="right: 9px; margin-top: 2px"></font>
					</div>
				</div>
			</div>

			<div class="col">
				<div class="input-group">
					<div class="form-floating">
						<input type="password" name="npass2"
							class="form-control input-cc inputPw2"
							id="floatingCheckPassword" maxlength="40" placeholder="">
						<label for="floatinCheckPassword">새로운 비밀번호 확인</label> <font
							id="pwDoubleCheck" size="2" color="red"
							class="position-absolute top-50 start-20 translate-middle-y"
							style="right: 9px; margin-top: 2px"></font>
					</div>
				</div>
			</div>
		  <div style="text-align: center"><button type="submit" class="backPage">수정하기</button></div>
   		<hr>
    <br>

				<!-- 이름 -->
					<div class="form-floating d-flex mt-2">
						<input type="text" name="name"
							class="form-control input-cc inputName" id="floatingName" value="${memberDTO.name }" readonly>
						<label for="floatingName">이름</label>
						<font id="nameError" size="2" 
						class="position-absolute top-50 start-20 translate-middle-y" 
						style="right: 9px; margin-top: 2px"></font>
					</div>					


<!--         <label for="birthdate">생년월일</label> -->
					<div class="form-floating d-flex mt-2">
						<input type="text" 
							class="form-control input-cc inputName" id="floatingbirth" value="${memberDTO.birth}" readonly>
						<label for="floatingbirth">생년월일</label>
						<font id="nameError" size="2" 
						class="position-absolute top-50 start-20 translate-middle-y" 
						style="right: 9px; margin-top: 2px"></font>
					</div>        
        
        
        
        					<!-- 연락처 -->
        		 <div class="col">			
        			<div class="input-group">
							<div class="form-floating">
    <input type="text" name="phone" class="form-control input-cc inputPhone" id="floatingTel" value="${memberDTO.phone }" readonly>
    <label for="floatingTel"><span>연락처</span></label>
<font id="checkPhone" size="2" 
class="position-absolute top-50 start-20 translate-middle-y" 
style="right: 9px; margin-top: 2px"></font>
     </div>
						</div>
					</div>        
        

<!--         <label for="address">주소</label> -->
					<div class="form-floating d-flex mt-2">
						<input type="text" 
							class="form-control input-cc inputName" id="floatingaddr" value="${memberDTO.address }" readonly>
						<label for="floatingaddr">주소</label>
						<font id="nameError" size="2" 
						class="position-absolute top-50 start-20 translate-middle-y" 
						style="right: 9px; margin-top: 2px"></font>
					</div>       

        
<!--          <label for="email">이메일</label> -->
         <div class="form-floating d-flex">
						<input type="text" name="member_mail"
							class="form-control input-cc" id="floatingMail" value="${memberDTO.email }" readonly>
						<label for="floatingMail"><span>이메일 입력</span></label>
					</div> 
        <div style="text-align: right"><button type="button" class="backPage" onclick="location.href='${pageContext.request.contextPath}/member/resign?id=${sessionScope.id}'">회원탈퇴</button></div>
    </form>

</div>
<script>
//비밀번호 확인 입력 요소 가져오기
const passwordConfirmInput = document.querySelector('input[name="npass2"]');

//비밀번호 확인 입력 필드에 이벤트 리스너 추가
passwordConfirmInput.addEventListener('input', function () {
//비밀번호 입력 값과 확인 값 비교
const passwordValue = document.querySelector('input[name="npass"]').value;
const confirmPasswordValue = this.value;

if (passwordValue !== confirmPasswordValue) {
// 일치하지 않을 경우 메시지 표시
displayPasswordConfirmMessage('비밀번호가 일치하지 않습니다', 'red');
} else {
// 일치할 경우 메시지 초기화
displayPasswordConfirmMessage('비밀번호가 일치합니다', 'green');
}
});

//메시지 표시 함수
function displayPasswordConfirmMessage(message, color) {
const pwDoubleCheckElement = document.getElementById('pwDoubleCheck');
pwDoubleCheckElement.innerText = message;
pwDoubleCheckElement.style.color = color;
}

</script>
    <script>
    function backPage(){
   	 alert("회원 정보 수정을 그만 둡니다.");
   	 
   	 history.back();
    }      
    
        function checkDuplicate(field) {
            // 중복 확인 로직 추가
            alert(field + ' 중복 확인');
        }

        function verifyPhone() {
            // 인증 확인 로직 추가
            alert('연락처 인증 확인');
        }
   
        
        
        
        
     // '출생 연도' 셀렉트 박스 option 목록 동적 생성
        const birthYearEl = document.querySelector('#birth-year')
        // option 목록 생성 여부 확인
        isYearOptionExisted = false;
        birthYearEl.addEventListener('focus', function () {
          // year 목록 생성되지 않았을 때 (최초 클릭 시)
          if(!isYearOptionExisted) {
            isYearOptionExisted = true
            for(var i = 1940; i <= 2022; i++) {
              // option element 생성
              const YearOption = document.createElement('option')
              YearOption.setAttribute('value', i)
              YearOption.innerText = i
              // birthYearEl의 자식 요소로 추가
              this.appendChild(YearOption);
            }
          }
        });
        // Month도 동일한 방식으로 구현
        const birthMonthEl = document.querySelector('#birth-month')
        isMonthOptionExisted = false;
        birthMonthEl.addEventListener('focus', function () {
            // year 목록 생성되지 않았을 때 (최초 클릭 시)
            if(!isMonthOptionExisted) {
              isMonthOptionExisted = true
              for(var j = 1; j <= 12; j++) {
                // option element 생성
                const MonthOption = document.createElement('option')
                MonthOption.setAttribute('value', j)
                MonthOption.innerText = j
                // birthYearEl의 자식 요소로 추가
                this.appendChild(MonthOption);
              }
            }
          });
        
        
     // day도 동일한 방식으로 구현
        const birthDayEl = document.querySelector('#birth-day')
        isDayOptionExisted = false;
        birthDayEl.addEventListener('focus', function () {
            // year 목록 생성되지 않았을 때 (최초 클릭 시)
            if(!isDayOptionExisted) {
              isDayOptionExisted = true
              for(var k = 1; k <= 31; k++) {
                // option element 생성
                const DayOption = document.createElement('option')
                DayOption.setAttribute('value', k)
                DayOption.innerText = k
                // birthYearEl의 자식 요소로 추가
                this.appendChild(DayOption);
              }
            }
          });
           
        
        
     // 도메인 직접 입력 or domain option 선택
        const domainListEl = document.querySelector('#domain-list')
        const domainInputEl = document.querySelector('#domain-txt')
        // select 옵션 변경 시
        domainListEl.addEventListener('change', (event) => {
          // option에 있는 도메인 선택 시
          if(event.target.value !== "type") {
            // 선택한 도메인을 input에 입력하고 disabled
            domainInputEl.value = event.target.value
            domainInputEl.disabled = true
          } else { // 직접 입력 시
            // input 내용 초기화 & 입력 가능하도록 변경
            domainInputEl.value = ""
            domainInputEl.disabled = false
          }
        })

        
        
    </script>
    
    
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
   
    
    
    
<script th:inline="javascript">
    /* 메시지 데이터 가져오기 */
    var message = '${message}';
    
    /* 메시지가 존재하는 경우에만 알림창 표시 */
    if (message) {
        alert(message);
    }
</script>   
</body>
</html>