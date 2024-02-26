<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">

    <title>약관동의서</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


<style>
* {
  box-sizing: border-box;
}

html,
body {
  height: 100%;
}

body {
  display: flex;
  margin: 0;
  background-color: #f5f6f7;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
    Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.wrap {
  margin: auto;
}

.wrap .logo {
  text-align: center;
  margin-bottom: 10px;
}

.wrap .logo h1 {
  margin: 0;
  font-size: 50px;
}

.wrap .contents {
  padding: 50px;
  background-color: #ffffff;
  border: 1px solid #dadada;
  border-radius: 5px;
  box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
}

#form__wrap {
  margin: 0 auto;
  width: 460px;
  font-size: 14px;
}

#form__wrap .terms__check__all {
  display: flex;
  margin-bottom: 35px;
}

#form__wrap .terms__check__all label {
  margin-left: 3px;
  text-decoration: underline;
}

.terms__list .terms__box {
  margin: 20px 0;
}

.contents label {
  font-weight: 700;
}

label.required::after {
  margin-left: 4px;
  font-size: 13px;
  font-weight: 400;
  line-height: 24px;
  color: #0086ff;
  content: "(필수)";
}

.terms__list .terms__content {
  height: 88px;
  overflow: auto;
  margin-top: 8px;
  padding: 12px;
  border: 1px solid #dadada;
  background: #fff;
  font-size: 12px;
}

.next-button {
  width: 100%;
  height: 40px;
  outline: none;
  cursor: pointer;
  background-color: #242222;
  color: #ffffff;
  border: none;
  border-radius: 5px;
  transition-duration: 0.2s;
}

.next-button:hover:enabled {
  background-color: #a3a2a2;
}

.next-button:disabled {
  opacity: 0.2;
  cursor: not-allowed;
}

@media (max-width: 768px) {
  .wrap {
    min-width: 280px;
    padding: 20px;
  }

  #form__wrap {
    max-width: 460px;
    width: auto;
  }
}

</style>



</head>
<body>
<div class="wrap">
      <div class="logo">
        <h1>One lesson</h1>
      </div>
      <div class="contents">
        <form action="/" method="POST" id="form__wrap">
          <div class="terms__check__all">
            <input type="checkbox" name="checkAll" id="checkAll" />
            <label for="checkAll">One lesson 이용약관, 개인정보 수집 및 이용, 프로모션 정보 수신(선택)에 모두 동의합니다.</label>
          </div>
          <ul class="terms__list">
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="termsOfService" value="termsOfService" required />
                <label for="termsOfService" class="required">One lesson 이용약관 동의</label>
              </div>
              <div class="terms__content">
                여러분을 환영합니다. One lesson 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 One lesson
                서비스의 이용과 관련하여 One lesson 서비스를 제공하는 One lesson 주식회사(이하 ‘One lesson’)와 이를 이용하는 One lesson 서비스
                회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 One lesson 서비스 이용에 도움이 될 수 있는
                유익한 정보를 포함하고 있습니다. One lesson 서비스를 이용하시거나 One lesson 서비스 회원으로 가입하실 경우 여러분은 본
                약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="privacyPolicy" value="privacyPolicy" required />
                <label for="privacyPolicy" class="required">개인정보 수집 및 이용 동의</label>
              </div>
              <div class="terms__content">
                개인정보보호법에 따라 One lesson에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및
                이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니
                자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는 개인정보 이용자는 회원가입을 하지 않아도 정보 검색,
                뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페,
                블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을
                위해 필요한 최소한의 개인정보를 수집합니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="allowPromotions" value="allowPromotions" />
                <label for="allowPromotions">프로모션 정보 수신 동의</label>
              </div>
              <div class="terms__content">
                One lesson에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(One lesson앱 알림 또는 문자), 이메일로 받아보실 수
                있습니다. 일부 서비스(별도 회원 체계로 운영하거나 One lesson 가입 이후 추가 가입하여 이용하는 서비스 등)의
                경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.
              </div>
            </li>
          </ul>
<!--           <button type="submit" class="next-button" disabled>확인</button> -->
          <button type="submit" class="next-button"
          onclick= "location.href='${pageContext.request.contextPath}/member/memberInsert1'">확인</button>
        </form>
      </div>
    </div>


<script>
'use strict';

const form = document.querySelector('#form__wrap');
const checkAll = document.querySelector('.terms__check__all input');
const checkBoxes = document.querySelectorAll('.input__check input');
const submitButton = document.querySelector('button');

const agreements = {
  termsOfService: false,
  privacyPolicy: false,
  allowPromotions: false,
};

form.addEventListener('submit', (e) => e.preventDefault()); // 새로고침(submit) 되는 것 막음

checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;  
  agreements[id] = checked;
  this.parentNode.classList.toggle('active');
  checkAllStatus();
  toggleSubmitButton();
}

function checkAllStatus() {
  const { termsOfService, privacyPolicy, allowPromotions } = agreements;
  if (termsOfService && privacyPolicy && allowPromotions) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }
}

function toggleSubmitButton() {
  const { termsOfService, privacyPolicy } = agreements;
  if (termsOfService && privacyPolicy) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
}

checkAll.addEventListener('click', (e) => {
  const { checked } = e.target;
  if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }
  toggleSubmitButton();
});

</script>

<script>
const form = document.querySelector('#form__wrap'); // 데이터를 전송하는 Form 
const checkAll = document.querySelector('.terms__check__all input'); // 모두 동의 체크박스
const checkBoxes = document.querySelectorAll('.input__check input'); // 모두 동의를 제외한 3개의 체크박스
const submitButton = document.querySelector('button'); // 확인 버튼
</script>


<script>
const agreements = {
		  termsOfService: false, // 첫번째 필수동의 체크박스
		  privacyPolicy: false, // 두번째 필수동의 체크박스
		  allowPromotions: false, // 이벤트 수신 동의 체크박스
		};
</script>


<script>
checkAll.addEventListener('click', (e) => {
	  const { checked } = e.target;
	  if (checked) {
	    checkBoxes.forEach((item) => {
	      item.checked = true;
	      agreements[item.id] = true;
	      item.parentNode.classList.add('active');
	    });
	  } else {
	    checkBoxes.forEach((item) => {
	      item.checked = false;
	      agreements[item.id] = false;
	      item.parentNode.classList.remove('active');
	    });
	  }
	  toggleSubmitButton();
	});
</script>

<script>
const { checked } = e.target;

const checked = e.target.checked;

</script>


<script>
if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }


if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  }

agreements[item.id] = true;

else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }
  toggleSubmitButton(); 
  
</script>

<script>
function toggleSubmitButton() {
	  const { termsOfService, privacyPolicy } = agreements;
	  if (termsOfService && privacyPolicy) {
	    submitButton.disabled = false;
	  } else {
	    submitButton.disabled = true;
	  }
	}


const { termsOfService, privacyPolicy } = agreements;


if (termsOfService && privacyPolicy) {
    submitButton.disabled = false; // 버튼 활성화
  } else {
    submitButton.disabled = true; // 버튼 비활성화
  }

</script>

<script>
checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;  
  agreements[id] = checked;
  this.parentNode.classList.toggle('active');
  checkAllStatus();
  toggleSubmitButton();
}


checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));


function toggleCheckbox(e) {
	  const { checked, id } = e.target; 
	  agreements[id] = checked;
	  this.parentNode.classList.toggle('active'); // 여기선 중요하지 않음
	  checkAllStatus();
	  toggleSubmitButton();
	}


function checkAllStatus() {
	  const { termsOfService, privacyPolicy, allowPromotions } = agreements;
	  if (termsOfService && privacyPolicy && allowPromotions) {
	    checkAll.checked = true;
	  } else {
	    checkAll.checked = false;
	  }
	}


const { termsOfService, privacyPolicy, allowPromotions } = agreements;


if (termsOfService && privacyPolicy && allowPromotions) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }

</script>


</body>
</html>