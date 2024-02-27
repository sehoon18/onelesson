<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
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
    <script type="text/javascript" src="${pageContext.request.contextPath }/resources/script/jquery-3.7.1.min.js"></script>
</head>
<body>

  <form action="${pageContext.request.contextPath}/member/memberInsertPro2" method="POST">
<a class="navbar-brand" href="${pageContext.request.contextPath}/member/main">
<img alt="Brand" src="${pageContext.request.contextPath}/resources/images/logo.png" style="width: 300px; height: auto; margin-left:170px;">
</a><br><br><br>
   <div class="col">
    <label for="id ">아이디*</label>
						<div class="input-group">
							<div class="form-floating" id="dupdiv">
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
   		        <label for="pass ">비밀번호*</label>
						<div class="input-group">
							<div class="form-floating">
								<input type="password" name="pass"
									class="form-control input-cc inputPw" 
									id="floatingPassword" maxlength="40" placeholder=""> 
								<label for="floatingPassword">비밀번호(필수)</label>
								<font id="pwCheck" size="2" color="red"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</div>
						</div>
					</div>
					
					

					<div class="col">
					<label for="pass2 ">비밀번호 확인*</label>
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
    <label for="nick ">닉네임*</label>
						<div class="input-group">
							<div class="form-floating">
								<input type="text" name="nick"
									class="form-control input-cc inputNick" id="floatingNick"
									maxlength="40" placeholder=""> <label for="floatingNick">닉네임(필수)</label>
								<font id="nickCheck" size="2"
									class="position-absolute top-50 start-20 translate-middle-y"
									style="right: 9px; margin-top: 2px"></font>
							</div>
						</div>
					</div>

				<!-- 이름 -->
				<label for="name ">이름*</label>
					<div class="form-floating d-flex mt-2">
						<input type="text" name="name"
							class="form-control input-cc inputName" id="floatingName" placeholder="">
						<label for="floatingName">이름</label>
						<font id="nameError" size="2" 
						class="position-absolute top-50 start-20 translate-middle-y" 
						style="right: 9px; margin-top: 2px"></font>
					</div>


        
        <label for="gender ">성별*</label>
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
  <font id="nickCheck" size="2"
	class="position-absolute top-50 start-20 translate-middle-y"
	style="right: 9px; margin-top: 2px"></font>
</div>
        
        
        
        
        					<!-- 연락처 -->
        		 <div class="col">			
        			<label for="phone">연락처*</label>
        			<div class="input-group">
							<div class="form-floating">
    <input type="text" name="phone" class="form-control input-cc inputPhone" id="floatingTel" placeholder="">
    <label for="floatingTel"><span>연락처 '-' 제외 입력</span></label>
<font id="checkPhone" size="2" 
class="position-absolute top-50 start-20 translate-middle-y" 
style="right: 9px; margin-top: 2px"></font>
     </div>
						</div>
					</div>
        
        
        
        

<label for="address">주소*</label>
         <div class="form-floating d-flex">
                  <input type="text" name="address"
                     class="form-control input-cc" id="floatingAddress" placeholder="" onclick="sample5_execDaumPostcode()" >
                  <label for="floatingAddress"><span>주소 입력(필수)</span></label>
               </div>             
             


<label for="email">이메일*</label>
<div class="form-floating d-flex" style="display: flex; align-items: center;">
    <input type="text" name="email" class="form-control" id="floatingMail" placeholder="" style="flex: 1;">
    <label for="floatingMail"><span>이메일 입력</span></label>
    <font id="checkEmail" size="2" class="position-absolute top-50 start-20 translate-middle-y" 
    style="right: 9px; margin-top: 2px"></font>
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
        
        				<!-- 사업자번호  -->
        				<label for="email">사업자번호</label>
					<div class="form-floating d-flex mt-2">
						<input type="text" name="businessNum"
							class="form-control input-cc " id="floatingName" placeholder="">
						<label for="floatingName">사업자번호</label>
					</div>
					
					
									<!-- 통신판매신고번호 -->
						<label for="email">통신판매신고번호</label>
					<div class="form-floating d-flex mt-2">
						<input type="text" name="mailOrderNum"
							class="form-control input-cc " id="floatingName" placeholder="">
						<label for="floatingName">통신판매신고번호</label>
					</div>
    
        



        <button type="submit" class="next-button">회원가입</button>
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
	
<script type="text/javascript">
    $(function () {
        // 아이디 입력란에 변화가 생길 때마다 실행
        $(".form-control.input-cc.inputId").on('blur', function () {
            // 입력된 아이디 가져오기
            var username = $(this).val().toLowerCase(); // 대소문자 구분 없이 체크하기 위해 소문자로 변환

            if((username) == "admin" 
            		|| username.includes("admin")
            		/*
            		|| (/admin/.test(username) 
            		|| /[a-zA-Z0-9]+admin/.test(username) 
            		|| /admin[a-zA-Z0-9]+$/.test(username)) 베
            		*/
            		){
            	$('#checkId').css('color', 'red');
                $('#checkId').text('"admin"은 사용할 수 없는 아이디입니다.');
                $(".form-control.input-cc.inputId").focus();
            //}
      
            // 아이디에 "admin"이 포함되어 있는지 확인
//             if (/admin/.test(username) || /[a-zA-Z0-9]+admin/.test(username) || /admin[a-zA-Z0-9]+$/.test(username)) {
//                 // 에러 메시지 표시
//                 $('#checkId').css('color', 'red');
//                 $('#checkId').text('"admin"은 사용할 수 없는 아이디입니다.');
            } else if (username.length < 6 || username.length > 20 || !/^[a-zA-Z0-9]+$/.test(username)) {
                // 아이디 유효성 확인
                // 에러 메시지 표시
                $('#checkId').css('color', 'red');
                $('#checkId').text('영문, 숫자 포함 6~20자를 입력해주세요.');
            } else {
                // 유효한 경우, 아이디 중복 확인을 위한 AJAX 요청
                $.ajax({
                    url: "${pageContext.request.contextPath}/member/checkId",
                    data: { 'id': username },
                    success: function (result) {
                        // 서버에서의 응답 처리
                        if (result == "iddup") {
                            result = "이미 존재하는 아이디입니다.";
                            $('#checkId').css('color', 'red');
                        } else{
                            result = "사용 가능한 아이디입니다.";
                            $('#checkId').css('color', 'green');                      
                        } 
                        // 결과를 해당 위치에 동적으로 표시
                        $('#checkId').html(result);
                    },
                    error: function () {
                        // AJAX 요청 중 에러 발생 시 처리
                        $('#checkId').text("서버 오류가 발생했습니다.");
                    }
                });
            }
        });
    });
</script>


<script>
// 비밀번호 입력 요소와 확인 비밀번호 입력 요소 가져오기
const passwordInput = document.querySelector('input[name="pass"]');
const confirmPasswordInput = document.querySelector('input[name="pass2"]');
const signUpButton = document.getElementById('signUpButton');

// 비밀번호 입력 필드에 이벤트 리스너 추가
passwordInput.addEventListener('input', function () {
    // 입력된 값을 가져오기
    const passwordValue = this.value;

    // 입력된 값이 빈 칸인지 확인
    if (!passwordValue.trim()) {
        // 빈 칸일 경우 메시지 표시
        displayPasswordMessage('비밀번호를 입력해주세요', 'red');
        confirmPasswordInput.disabled = true; // 다음 입력 칸 비활성화
        signUpButton.disabled = true; // 가입 버튼 비활성화
        return;
    }

    // 입력된 값이 기준을 충족하는지 확인
    const isValidFormat = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/.test(passwordValue);

    if (isValidFormat) {
        // 유효한 형식인 경우 메시지 표시
        displayPasswordMessage('사용 가능한 비밀번호입니다', 'green');
        confirmPasswordInput.disabled = false; // 다음 입력 칸 활성화
        signUpButton.disabled = true; // 가입 버튼 비활성화
    } else {
        // 유효하지 않은 형식인 경우 메시지 표시
        displayPasswordMessage('영문, 숫자, 특수문자 포함(공백제외) 8~16자 이하 입력해주세요', 'red');
        confirmPasswordInput.disabled = true; // 다음 입력 칸 비활성화
        signUpButton.disabled = true; // 가입 버튼 비활성화
    }
});

// 확인 비밀번호 입력 필드에 이벤트 리스너 추가
confirmPasswordInput.addEventListener('input', function () {
    // 입력된 비밀번호와 확인 비밀번호 가져오기
    const passwordValue = passwordInput.value;
    const confirmPasswordValue = this.value;

    // 확인 비밀번호가 빈 칸인지 확인
    if (!confirmPasswordValue.trim()) {
        // 빈 칸일 경우 메시지 표시
        displayConfirmPasswordMessage('비밀번호를 다시 입력해주세요', 'red');
        signUpButton.disabled = true; // 가입 버튼 비활성화
        return;
    }

    // 비밀번호와 확인 비밀번호 일치 여부 확인
    if (passwordValue === confirmPasswordValue) {
        // 일치하는 경우 메시지 표시
        displayConfirmPasswordMessage('비밀번호가 일치합니다', 'green');
        signUpButton.disabled = false; // 가입 버튼 활성화
    } else {
        // 불일치하는 경우 메시지 표시
        displayConfirmPasswordMessage('비밀번호가 일치하지 않습니다', 'red');
        signUpButton.disabled = true; // 가입 버튼 비활성화
    }
});

// 메시지 표시 함수 (비밀번호)
function displayPasswordMessage(message, color) {
    const pwMessageElement = document.getElementById('pwCheck');
    pwMessageElement.innerText = message;
    pwMessageElement.style.color = color;
}

// 메시지 표시 함수 (확인 비밀번호)
function displayConfirmPasswordMessage(message, color) {
    const pwMessageElement = document.getElementById('pwDoubleCheck');
    pwMessageElement.innerText = message;
    pwMessageElement.style.color = color;
}
</script>


<script>
$(function(){
    // 닉네임 입력란에 변화가 생길 때마다 실행
    $(".form-control.input-cc.inputNick").on('input', function(){
        // Get the entered nickname
        var nickname = $(this).val();
        
        // Check the nickname length validity
        if (nickname.length < 2 || nickname.length > 15) {
            // Display error message for invalid length
            $('#nickCheck').css('color', 'red');
            $('#nickCheck').text('닉네임은 2~15자로 입력해주세요.');
            return;
        }

        // Perform AJAX request for duplication check
        $.ajax({
            url: "${pageContext.request.contextPath}/member/checkNick",
            data: {'nick': nickname},
            success: function(result){
                // 서버에서의 응답 처리
                if(result == "nickdup"){
                    result = "이미 존재하는 닉네임입니다.";
                    $('#nickCheck').css('color', 'red');
                } else {
                    result = "사용 가능한 닉네임입니다.";
                    $('#nickCheck').css('color', 'green');
                }
                // 결과를 해당 위치에 동적으로 표시
                $('#nickCheck').html(result);
            },
            error: function(){
                // AJAX 요청 중 에러 발생 시 처리
                $('#nickCheck').text("서버 오류가 발생했습니다.");
            }
        });
    });
});
</script>


<script>
$(function () {
    // 이름 입력란에 변화가 생길 때마다 실행
    $(".form-control.input-cc").on('input', function () {
        // 입력된 이름 가져오기
        var name = $(this).val();

        // 이름이 빈 문자열인지 확인
        if (name.trim() === "") {
            // 빈 문자열일 경우 에러 메시지 표시
            $('#nameError').css('color', 'red');
            $('#nameError').text('이름은 필수입니다.');
        } else if (!/^[가-힣]+$/.test(name)) {
            // 이름이 한글이 아닌 경우 에러 메시지 표시
            $('#nameError').css('color', 'red');
            $('#nameError').text('이름은 한글만 입력 가능합니다.');
        } else {
            // 이름이 입력되었을 경우 에러 메시지 초기화
            $('#nameError').text('');
        }
    });
});
</script>

<script>
$(function(){
    // 전화번호 입력란에 변화가 생길 때마다 실행
    $(".form-control.input-cc.inputPhone").on('input', function(){
        // 입력된 전화번호 가져오기
        var phoneNumber = $(this).val();

        // 전화번호 형식 유효성 확인
        if (!isValidPhoneNumber(phoneNumber)) {
            // 유효하지 않은 형식에 대한 오류 메시지 표시
            $('#checkPhone').css('color', 'red');
            $('#checkPhone').text('올바른 전화번호 형식이 아닙니다.');
            return;
        }

        // 중복 확인을 위한 AJAX 요청
        $.ajax({
            url: "${pageContext.request.contextPath}/member/checkPhone",
            data: {'phone': phoneNumber},
            success: function(result){
                // 서버 응답 처리
                if(result == "phonedup"){
                    result = "이미 존재하는 연락처입니다.";
                    $('#checkPhone').css('color', 'red');
                } else {
                    result = "사용 가능한 연락처입니다.";
                    $('#checkPhone').css('color', 'green');
                }
                // 결과를 해당 위치에 동적으로 표시
                $('#checkPhone').html(result);
            },
            error: function(){
                // AJAX 요청 중 에러 발생 시 처리
                $('#checkPhone').text("서버 오류가 발생했습니다.");
            }
        });
    });
});

// 전화번호 형식 검증 함수
function isValidPhoneNumber(phoneNumber) {
    // 예시: 숫자 10자리 또는 11자리
    const phoneRegex = /^\d{10,11}$/;
    return phoneRegex.test(phoneNumber);
}
</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

function sample5_execDaumPostcode() {
 new daum.Postcode({
     oncomplete: function(data) {
         var addr = data.address; // 최종 주소 변수

         // 주소 정보를 해당 필드에 넣는다.
         document.getElementById("floatingAddress").value = addr;
      
     }
 }).open();
}


$(function () {
    // 이메일 입력란에 변화가 생길 때마다 실행
    $("input[name='email']").on('input', function () {
        // 입력된 이메일 가져오기
        var email = $(this).val();

        // 이메일 형식 유효성 확인
        if (!isValidEmail(email)) {
            // 유효하지 않은 형식에 대한 오류 메시지 표시
            $('#checkEmail').css('color', 'red');
            $('#checkEmail').text('올바른 이메일 형식이 아닙니다.');
            return;
        }

        // 중복 확인을 위한 AJAX 요청
        $.ajax({
            url: "${pageContext.request.contextPath}/member/checkEmail",
            data: {'email': email},
            success: function(result){
                // 서버 응답 처리
                if(result == "emaildup"){
                    result = "이미 존재하는 이메일입니다.";
                    $('#checkEmail').css('color', 'red');
                } else {
                    result = "사용 가능한 이메일입니다.";
                    $('#checkEmail').css('color', 'green');
                }
                // 결과를 해당 위치에 동적으로 표시
                $('#checkEmail').html(result);
            },
            error: function(){
                // AJAX 요청 중 에러 발생 시 처리
                $('#checkEmail').text("서버 오류가 발생했습니다.");
            }
        });
    });
});

// 이메일 형식 검증 함수
function isValidEmail(email) {
    // 간단한 이메일 형식 정규식 사용
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

</script>


    

</body>
</html>