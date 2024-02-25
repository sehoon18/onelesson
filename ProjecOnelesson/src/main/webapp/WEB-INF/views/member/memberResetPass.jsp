<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <style>
        h2 {
            text-align: center;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px; /* Adjust the margin as needed */
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column; /* Vertical stacking of child elements */
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
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
            width: 100%;
        }
    </style>
</head>
<body>
    <h1>One lesson</h1>
    <form action="/reset-password" method="POST" id="resetPasswordForm">
        <h2>비밀번호 재설정</h2>

        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required readonly>

        <label for="new-password">새로운 비밀번호 입력:</label>
        <input type="password" id="new-password" name="new-password" required>

        <label for="confirm-password">비밀번호 재확인:</label>
        <input type="password" id="confirm-password" name="confirm-password" required>

        <button type="submit">비밀번호 재설정</button>
    </form>
    
    <script>
        // 세션에서 저장된 id 값을 가져와서 아이디 입력란에 설정.
        var sessionId = '<%= session.getAttribute("foundUserId") %>';
        document.getElementById('id').value = sessionId;
    </script>

    <script>
        document.getElementById('resetPasswordForm').addEventListener('submit', function(event) {
            var newPassword = document.getElementById('new-password').value;
            var confirmPassword = document.getElementById('confirm-password').value;

            if (newPassword !== confirmPassword) {
                alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
                event.preventDefault(); // 폼 제출 방지
            }
        });
    </script>


</body>
</html>