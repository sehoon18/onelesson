<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>강의 등록 페이지</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
      $("#registerBtn").click(function(){
        var lectureInfo = "레슨을 등록하면 관리자의 심사가 필요하며, 심사는 1~2일정도 걸립니다. 레슨 등록 수수료는 금액의 10% 입니다.";
        var popup = window.open("", "Popup", "width=300,height=200");
        popup.document.write("<p>강의를 등록하시겠습니까?</p>");
        popup.document.write("<button id='confirmBtn'>동의</button>");
        popup.document.close();

        popup.document.getElementById("confirmBtn").onclick = function(){
          $.ajax({
            url: "register.jsp",
            type: "post",
            data: { lectureInfo: lectureInfo },
            success: function(data){
              alert("강의가 등록되었습니다.");
              popup.close();
            },
            error: function(){
              alert("강의 등록에 실패하였습니다.");
            }
          });
        };
      });
    });
    </script>
</head>
<body>
    <button id="registerBtn">등록</button>
</body>
</html>
