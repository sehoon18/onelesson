<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지/이벤트 등록</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css"
          integrity="sha256-IKhQVXDfwbVELwiR0ke6dX+pJt0RSmWky3WB2pNx9Hg=" crossorigin="anonymous">
</head>
<body>

<jsp:include page="../inc/header.jsp"/>

<main class="flex-shrink-0" style="padding-top: 100px">
    <div class="container">
        <h1 class="mt-5">공지/이벤트 등록</h1>
        <p class="lead">공지/이벤트 등록 페이지입니다.</p>
        <hr>
        <form action="${pageContext.request.contextPath}/board/noticeInsertPro" method="post"
              enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-2">
                    <label for="category" class="form-label">타입</label>
                    <select class="form-select mb-3" id="category">
                        <option value="">-- 타입 선택 --</option>
                        <option value="공지">공지</option>
                        <option value="이벤트">이벤트</option>
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
            <button type="submit" class="btn btn-primary" onclick="href='${pageContext.request.contextPath}/board/noticeList'">등록</button>
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

            if (selectedType === '공지') {
                typeOptions.append($('<option>', {value: '공지', text: '공지'}));
            } else if (selectedType === '이벤트') {
                typeOptions.append($('<option>', {value: '이벤트', text: '이벤트'}));
            }
            // 추가적인 타입이 있다면 여기에 추가
        });
    });
</script>

<jsp:include page="../inc/footer.jsp"/>

</body>
</html>
