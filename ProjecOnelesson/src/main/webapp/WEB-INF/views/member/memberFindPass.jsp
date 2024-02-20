<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="styles.css">

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>
        *{  
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        }
        
        h2{
            text-align: center;
        }
        
        body {
            width:800px;
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

        .container {
            width: 75%; /* Set width to 75% of viewport */
            text-align: left;
        }

        form { 
            background-color: #fff; 
            padding: 50px;  
            border-radius: 8px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        }

        label {
            display: inline-block;
            text-align: left;
            margin-bottom: 5px;
        }

        select,
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        .radio-label {
            display: inline-block;
            text-align: left;
            margin-right: 10px;
        }

        .find-button {
            padding: 15px;
            font-size: 18px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }

        button {
            background-color: black;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            justify-content: center;
        }

     
    </style>
</head>

<body>


    <div class="container">
        <h2>비밀번호 찾기</h2>
        <form id="findPasswordForm">
            <label for="userType">회원 유형:</label>
            <select id="userType" onchange="updateFields()">
                <option value="normal">일반회원</option>
                <option value="instructor">강사회원</option>
            </select>

            <div id="normalFields">
                <label>찾기 방법:</label>
                <input type="radio" id="normalEmailRadio" name="normalSearchType" value="email" onchange="updateNormalFields()">
                <label class="radio-label" for="normalEmailRadio">이메일</label>
                <input type="radio" id="normalPhoneRadio" name="normalSearchType" value="phone" onchange="updateNormalFields()">
                <label class="radio-label" for="normalPhoneRadio">휴대폰번호</label>

                <div id="normalEmailFields" style="display: none;">
                    <label for="normalId">아이디:</label>
                    <input type="text" id="normalId" name="normalId" required>

                    <label for="normalName">이름:</label>
                    <input type="text" id="normalName" name="normalName" required>

                    <label for="normalEmail">이메일:</label>
                    <input type="email" id="normalEmail" name="normalEmail" required>
                </div>

                <div id="normalPhoneFields" style="display: none;">
                    <label for="normalId">아이디:</label>
                    <input type="text" id="normalId" name="normalId" required>

                    <label for="normalName">이름:</label>
                    <input type="text" id="normalName" name="normalName" required>

                    <label for="normalPhone">휴대폰번호:</label>
                    <input type="tel" id="normalPhone" name="normalPhone" required>
                    <!-- 휴대폰번호 인증을 받는 로직을 추가할 수 있습니다. -->
                </div>

                <button type="button" onclick="findPassword()">비밀번호 찾기</button>
            </div>

            <div id="instructorFields" style="display: none;">
                <label>찾기 방법:</label>
                <input type="radio" id="instructorEmailRadio" name="instructorSearchType" value="email" onchange="updateInstructorFields()">
                <label class="radio-label" for="instructorEmailRadio">이메일</label>
                <input type="radio" id="instructorPhoneRadio" name="instructorSearchType" value="phone" onchange="updateInstructorFields()">
                <label class="radio-label" for="instructorPhoneRadio">휴대폰번호</label>
                <input type="radio" id="instructorBusinessRadio" name="instructorSearchType" value="business" onchange="updateInstructorFields()">
                <label class="radio-label" for="instructorBusinessRadio">사업자번호</label>

                <div id="instructorEmailFields" style="display: none;">
                    <label for="instructorId">아이디:</label>
                    <input type="text" id="instructorId" name="instructorId" required>

                    <label for="instructorName">이름:</label>
                    <input type="text" id="instructorName" name="instructorName" required>

                    <label for="instructorEmail">이메일:</label>
                    <input type="email" id="instructorEmail" name="instructorEmail" required>
                </div>

                <div id="instructorPhoneFields" style="display: none;">
                    <label for="instructorId">아이디:</label>
                    <input type="text" id="instructorId" name="instructorId" required>

                    <label for="instructorName">이름:</label>
                    <input type="text" id="instructorName" name="instructorName" required>

                    <label for="instructorPhone">휴대폰번호:</label>
                    <input type="tel" id="instructorPhone" name="instructorPhone" required>
                    <!-- 휴대폰번호 인증을 받는 로직을 추가할 수 있습니다. -->
                </div>

                <div id="instructorBusinessFields" style="display: none;">
                    <label for="instructorId">아이디:</label>
                    <input type="text" id="instructorId" name="instructorId" required>

                    <label for="instructorName">이름:</label>
                    <input type="text" id="instructorName" name="instructorName" required>

                    <label for="instructorBusinessNumber">사업자번호:</label>
                    <input type="text" id="instructorBusinessNumber" name="instructorBusinessNumber" required>
                    <!-- 사업자번호 인증을 받는 로직을 추가할 수 있습니다. -->
                </div>

                <button type="button" 
                onclick= "location.href='${pageContext.request.contextPath}/member/memberFindPass'">비밀번호 찾기</button>
            </div>
        </form>
        <p id="resultMessage"></p>
    </div>

    <script src="script.js"></script>

    <script>
        function updateFields() {
            var userType = document.getElementById('userType').value;
            var normalFields = document.getElementById('normalFields');
            var instructorFields = document.getElementById('instructorFields');

            if (userType === 'normal') {
                normalFields.style.display = 'block';
                instructorFields.style.display = 'none';
            } else if (userType === 'instructor') {
                normalFields.style.display = 'none';
                instructorFields.style.display = 'block';
            }
            // Additional logic to set the initial display for radio buttons
            updateNormalFields();
            updateInstructorFields();
        }

        function updateNormalFields() {
            var emailFields = document.getElementById('normalEmailFields');
            var phoneFields = document.getElementById('normalPhoneFields');

            if (document.getElementById('normalEmailRadio').checked) {
                emailFields.style.display = 'block';
                phoneFields.style.display = 'none';
            } else if (document.getElementById('normalPhoneRadio').checked) {
                emailFields.style.display = 'none';
                phoneFields.style.display = 'block';
            }
        }

        function updateInstructorFields() {
            var emailFields = document.getElementById('instructorEmailFields');
            var phoneFields = document.getElementById('instructorPhoneFields');
            var businessFields = document.getElementById('instructorBusinessFields');

            if (document.getElementById('instructorEmailRadio').checked) {
                emailFields.style.display = 'block';
                phoneFields.style.display = 'none';
                businessFields.style.display = 'none';
            } else if (document.getElementById('instructorPhoneRadio').checked) {
                emailFields.style.display = 'none';
                phoneFields.style.display = 'block';
                businessFields.style.display = 'none';
            } else if (document.getElementById('instructorBusinessRadio').checked) {
                emailFields.style.display = 'none';
                phoneFields.style.display = 'none';
                businessFields.style.display = 'block';
            }
        }

        function findPassword() {
            // 실제로는 서버사이드에서 이메일 인증, 휴대폰 인증, 사업자번호 인증 등을 구현해야 합니다.
            // 여기서는 간략하게 결과를 표시하도록 합니다.

            var userType = document.getElementById('userType').value;
            var resultMessage = document.getElementById('resultMessage');

            if (userType === 'normal') {
                var id = document.getElementById('normalId').value;
                var name = document.getElementById('normalName').value;

                if (document.getElementById('normalEmailRadio').checked) {
                    var email = document.getElementById('normalEmail').value;
                    // 이메일 인증 로직 추가
                    resultMessage.innerHTML = "가상의 결과: 아이디 " + id + ", 이름 " + name + ", 이메일 " + email;
                } else if (document.getElementById('normalPhoneRadio').checked) {
                    var phone = document.getElementById('normalPhone').value;
                    // 휴대폰 인증 로직 추가
                    resultMessage.innerHTML = "가상의 결과: 아이디 " + id + ", 이름 " + name + ", 휴대폰번호 " + phone;
                }
            } else if (userType === 'instructor') {
                var id = document.getElementById('instructorId').value;
                var name = document.getElementById('instructorName').value;

                if (document.getElementById('instructorEmailRadio').checked) {
                    var email = document.getElementById('instructorEmail').value;
                    // 이메일 인증 로직 추가
                    resultMessage.innerHTML = "가상의 결과: 아이디 " + id + ", 이름 " + name + ", 이메일 " + email;
                } else if (document.getElementById('instructorPhoneRadio').checked) {
                    var phone = document.getElementById('instructorPhone').value;
                    // 휴대폰 인증 로직 추가
                    resultMessage.innerHTML = "가상의 결과: 아이디 " + id + ", 이름 " + name + ", 휴대폰번호 " + phone;
                } else if (document.getElementById('instructorBusinessRadio').checked) {
                    var businessNumber = document.getElementById('instructorBusinessNumber').value;
                    // 사업자번호 인증 로직 추가
                    resultMessage.innerHTML = "가상의 결과: 아이디 " + id + ", 이름 " + name + ", 사업자번호 " + businessNumber;
                }
            }
        }
    </script>
    
     
</body>
</html>
