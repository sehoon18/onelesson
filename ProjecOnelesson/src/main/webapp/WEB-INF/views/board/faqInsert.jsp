<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>자주 묻는 질문 등록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
          integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">
</head>
<body>

<jsp:include page="../inc/header.jsp"/>

<main class="flex-shrink-0" style="padding-top: 100px">
    <div class="container">
        <h1 class="mt-5">자주 묻는 질문 등록</h1>
        <p class="lead">자주 묻는 질문 등록 페이지입니다.</p>
        <hr>
        <form action="${pageContext.request.contextPath}/board/faqInsertPro" method="post"
              enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-2">
                    <label for="category" class="form-label">타입</label>
                    <select class="form-select mb-3" id="category">
                        <option value="">-- 타입 선택 --</option>
                        <option value="공통">공통</option>
                        <option value="학생">학생</option>
                        <option value="강사">강사</option>                        
                    </select>
                </div>
                <div class="col-md-10">
                    <label for="subject" class="form-label">제목</label>
                    <input type="text" name="subject" class="form-control mb-3" id="subject">
                </div>
                <div class="col-12">
                    <label for="myEditor" class="form-label">상세 설명</label>
                    <textarea id="myEditor" name="content" class="form-control mb-3"></textarea>
                </div>
            </div>
            <hr>
            <button type="submit" class="btn btn-primary" onclick="href='${pageContext.request.contextPath}/board/faqList'">등록</button>
        </form>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function () {
        $('#myEditor').summernote({
            placeholder: 'Summernote for Bootstrap 5',
            tabsize: 2,
            height: 400,
            lang: 'ko-KR', // default: 'en-US'
        });

        $('#category').change(function () {
            var selectedType = $(this).val();
            var typeOptions = $('#type');

            typeOptions.empty(); // 기존의 옵션을 제거

            if (selectedType === '공통') {
                typeOptions.append($('<option>', {value: '공통', text: '공통'}));
            } else if (selectedType === '학생') {
                typeOptions.append($('<option>', {value: '학생', text: '학생'}));
            } else {
            	typeOptions.append($('<option>', {value: '강사', text: '강사'}));
            }
            // 추가적인 타입이 있다면 여기에 추가
        });
    });
</script>

<jsp:include page="../inc/footer.jsp"/>

</body>
</html>
