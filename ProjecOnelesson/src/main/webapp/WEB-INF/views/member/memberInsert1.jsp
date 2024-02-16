<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>
    
   <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    
    
    
    <style>
    
         body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
/*             margin: 0; */
/*             padding: 0; */
            display: flex;
            justify-content: center;
            align-items: center;
            height: auto;
/*             width: auto; */
        }

        form {
            background-color: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 700px;
            justify-content: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }
        
         input, select {        
             width: 100%; 
             padding: 5px; 
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
            width: 600px;
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


    <form action="${pageContext.request.contextPath}/member/memberInsertPro1" method="POST">
    <h1 class="h3 mb-3 fw-normal" style="text-align: left;">회원가입</h1>
       
    <div class="col">
						<div class="input-group">
							<div class="form-floating">
<!-- 										memberDTO 값이랑 name이 같아야함  -->
								<input type="text" name="id"  
									class="form-control input-cc inputId" id="floatingId"
									maxlength="40" placeholder=""> <label for="floatingId">아이디(필수)</label>
								<font id="checkId" size="2"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</div>
						</div>
					</div>
   		
   		
   		
   		
   		<div class="col">
						<div class="input-group">
							<div class="form-floating">
								<input type="password" name="pass"
									class="form-control input-cc inputPw" id="floatingPassword"
									maxlength="40" placeholder=""> <label
									for="floatingPassword">비밀번호(필수)</label>
<!-- 								<div class="password-hints"> -->
<!-- 									<font class="hint1" color="red">대소문자 &#10003;</font> <font -->
<!-- 										class="hint2" color="red">숫자 &#10003;</font> <font -->
<!-- 										class="hint3" color="red">특수문자 &#10003;</font> <font -->
<!-- 										class="hint4" color="red">8~20자 이내 &#10003;</font> -->
<!-- 								</div> -->
							</div>
						</div>
					</div>
					

					<div class="col">
						<div class="input-group">
							<div class="form-floating">
								<input type="password" name="pass2"
									class="form-control input-cc inputPw2"
									id="floatingCheckPassword" maxlength="40" placeholder="">
								<label for="floatinCheckPassword">비밀번호 확인(필수)</label> <font
									id="pwDoubleCheck" size="2" color="red"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</div>
						</div>
					</div>
   		
    
    <div class="col">
						<div class="input-group">
							<div class="form-floating">
								<input type="text" name="nick"
									class="form-control input-cc inputId" id="floatingId"
									maxlength="40" placeholder=""> <label for="floatingId">닉네임(필수)</label>
								<font id="checkId" size="2"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</div>
						</div>
					</div>

				<!-- 이름 -->
					<div class="form-floating d-flex mt-2">
						<input type="text" name="name"
							class="form-control input-cc " id="floatingName" placeholder="">
						<label for="floatingName">이름</label>
					</div>


<!--         <label>성별*</label> -->
<!--         <input calss="form-check-input" type="radio" id="male" name="gender" value="male" checked> -->
<!--         <label for="male">남</label> -->
<!--         <input calss="form-check-input" type="radio" id="female" name="gender" value="female"> -->
<!--         <label for="female">여</label> -->
        
        
        <div class="form-floating d-flex">
						<div class="form-check form-check-inline">
							<input type="radio" name="gender" class="form-check-input"
								id="floatingKor" value="0" checked> <label
								class="form-check-label" for="floatingKor">남</label>
        <input type="hidden" id="genderHidden" name="gender_hidden" value="0">
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" name="gender" class="form-check-input"
								id="floatingFor" value="1"> <label
								class="form-check-label" for="floatingFor">여</label>
        <input type="hidden" id="genderHidden" name="gender_hidden" value="1">
						</div>
					</div>
        
        
        

        <label for="birth ">생년월일*</label>
       <div class="info" id="info__birth">
  <select class="box" id="birth-year" name="birth">
    <option disabled selected>출생 연도</option>
  </select>
  <select class="box" id="birth-month" name="birth">
    <option disabled selected>월</option>
  </select>
  <select class="box" id="birth-day" name="birth">
    <option disabled selected>일</option>
  </select>
</div>
        
        
        
        
        					<!-- 연락처 -->
					<div class="form-floating d-flex">
						<input type="text" name="phone"
							class="form-control input-cc" id="floatingTel" placeholder="">
						<label for="floatingTel"><span>연락처 '-' 제외 입력</span></label>
					</div>
        
        
        
        

<label for="address">주소*</label>
         <div class="form-floating d-flex">
                  <input type="text" name="address"
                     class="form-control input-cc" id="floatingTel" placeholder="">
                  <label for="floatingTel"><span>주소 입력(필수)</span></label>
               </div>


<label for="email">이메일*</label>
<div class="form-floating d-flex" style="display: flex; align-items: center;">
    <input type="text" name="email" class="form-control" id="floatingMail" placeholder="" style="flex: 1;">
    <label for="floatingMail"><span>이메일 입력</span></label>
</div>

<div class="form-floating d-flex" style="display: flex; align-items: center;">
    <input class="form-control" id="domain-txt" type="text" style="flex: 1;">
    <select class="form-control" id="domain-list" style="margin-left: 5px; width: auto;">
        <option value="type">직접 입력</option>
        <option value="@naver.com">@naver.com</option>
        <option value="@google.com">@google.com</option>
        <option value="@hanmail.net">@hanmail.net</option>
        <option value="@nate.com">@nate.com</option>
        <option value="@kakao.com">@kakao.com</option>
    </select>
</div> 
        


  
        <button type="submit">회원가입</button>
</form>
    <script>
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
   
    
    
    
    
</body>
</html>
