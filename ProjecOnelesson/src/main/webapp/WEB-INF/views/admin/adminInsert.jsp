<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 화면 샘플 - Bootstrap</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>

  h1{
  text-align: center;
  margin-top: 30px; 
  font-size: 50px;
  }
  
    body {
      min-height: 100vh;
	  background-color: #f4f4f4;
      
    }

    .input-form {
       max-width: 600px; 
	
       margin-top: 30px;
       margin-bottom: 30px; 
       padding: 32px; 

       background: #fff; 
       -webkit-border-radius: 10px; 
       -moz-border-radius: 10px; 
       border-radius: 10px; 
       -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
       -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
       box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15) 
    }
    
/*     input[type=email], select[type=email]{ */
		
/*     	width: 180px; */
/*     } */
    
    .info#birth {
  display: flex;
  gap: 10px; /* 선택적으로 간격을 조절할 수 있습니다. */
}

.info#birth select {
  width: 100%;
}


/* 	input[type=phone]{ */
/* 		width: 400px; */
/* } */



	button{
	background-color: black;
	color:white;
	border-radius: 5px;
	
	}
	
	


/* Existing styles */

/* Add or modify the following styles for the button */
.input-form button {
  background-color: #000; /* Black background color */
  color: #fff; /* White text color */
  border: 1px solid #000; /* Optional: add border for better visibility */
}

.input-form button:hover {
  background-color: #333; /* Darker shade on hover */
}

    
  </style>
</head>

<body>
<h1>One lesson</h1>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">관리자 회원가입</h4>
        
        
        <form class="validation-form" novalidate>
          <div class="row">
          

            </div>
            
            <div class="signup">
              <label for="nickname">아이디*</label>
              <input type="text" class="form-control" id="id" placeholder="영문,숫자 포함(6~20자)입력" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div><br>
            
            
           <div class="signup">
              <label for="nickname">비밀번호*</label>
              <input type="password" class="form-control input-cc inputPw" id="pass" placeholder="영문,숫자,특수문자 포함 최소8자이상 입력" value="" required>
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div><br>
            
           <div class="signup">
              <label for="nickname">비밀번호 확인*</label>
              <input type="password" class="form-control input-cc inputPw" id="password" placeholder="비밀번호를 한번 더 입력해주세요" value="" required>
              <div class="invalid-feedback">
                비밀번호를 확인해주세요.
              </div>
            </div><br>
      
            
                        <div class="signup">
              <label for="name">이름*</label>
              <input type="text" class="form-control" id="name" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
          </div><br>



                     <div class="signup">
              <label for="phone">연락처*</label>
              <input type="phone" class="form-control" id="name" placeholder="연락처 '-' 제외 입력 (ex.01023456789)" value="" required>
              <div class="invalid-feedback"> 
              </div><br>
           
<!--           <button onclick="verifyPhone()">인증확인</button></div><br> -->
          
          
          
<!--                      <label for="email">이메일*</label> -->
<!--                     <div class="mb-3" id="email"> -->
<!--             <input type="email" class="form-control" id="email" placeholder="you@example.com" required> -->
<!--             <div class="invalid-feedback">이메일을 입력해주세요.</div></div> -->
<!--           <input class="form-control" id="domain-txt" type="email"/> -->
<!--         <select class="form-control" id="domain-list" type="email"> -->
<!--   <option value="type">직접 입력</option> -->
<!--   <option value="@naver.com">@naver.com</option> -->
<!--   <option value="@google.com">@google.com</option> -->
<!--   <option value="@hanmail.net">@hanmail.net</option> -->
<!--   <option value="@nate.com">@nate.com</option> -->
<!--   <option value="@kakao.com">@kakao.com</option> -->
<!-- </select><button onclick="checkDuplicate('email')">중복확인</button><br> -->



<!-- 기존 코드 -->

<!-- 기존 코드 -->

<!-- 기존 코드 -->

<!-- 기존 코드 -->

<label for="email">이메일*</label>
<div class="mb-3" id="email" style="display: flex; align-items: center;">
  <input type="email" class="form-control" id="email" placeholder="" style="width: 100%;" required>
  <div style="margin-left: 10px; width: 100%;">
    <input class="form-control" id="domain-txt" type="email" style="width: 100%;"/>
  </div>
  <select class="form-control" id="domain-list" type="email" style="width: 100%;">
    <option value="type">직접 입력</option>
    <option value="@naver.com">@naver.com</option>
    <option value="@google.com">@google.com</option>
    <option value="@hanmail.net">@hanmail.net</option>
    <option value="@nate.com">@nate.com</option>
    <option value="@kakao.com">@kakao.com</option>
  </select>
</div>

<!-- 나머지 코드 -->


<!-- 나머지 코드 -->


<!-- 나머지 코드 -->


<!-- 나머지 코드 -->

          

        
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn- btn-lg btn-block"  
          onclick= "location.href='${pageContext.request.contextPath}/admin/adminLogin'">가입 완료</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">

    </footer>
  </div>
  
  
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
  
  

	
<script>
function checkDuplicate(field) {
    // 중복 확인 로직 추가
    alert(field + ' 중복 확인');
}

function verifyPhone() {
    // 인증 확인 로직 추가
    alert('연락처 인증 확인');
}




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
	
	
	
</body>

</html>