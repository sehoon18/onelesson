<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
	<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>
	
<style type="text/css">
#myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
}
#myform fieldset legend{
    text-align: right;
}
#myform input[type=radio]{
    display: none;
}
#myform label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
#myform label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#myform input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
#reviewContents {
    height: 150px;
    padding: 10px;
    box-sizing: border-box;
    border: solid 1.5px #D3D3D3;
    border-radius: 5px;
    font-size: 16px;
    resize: none;
}
        #image_container {
            border: 1px solid #ccc;
            width: 300px;
            height: 180px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        #image_container img {
            max-width: 100%;
            max-height: 100%;
        }
        .review_section {
            display: flex;
        }
        .imagespace, .rating {
        	margin: 5px;
            flex: 1;
        }
</style>
</head>
<body style="background:#fff;">
	<jsp:include page="../inc/header.jsp" />
<div style="background-size: cover; background-position: center; background-image: url('${pageContext.request.contextPath}/resources/images/reviewimage.jpeg');">
  <section class="py-5 text-center container" style="height: 300px;">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
<!--         <h1 class="fw-light" style="color: white;">Q&A</h1> -->
      </div>
    </div>
  </section>
</div>

<main class="review_cover">
<div align="center" style="width: 1100px; height: 600px; margin: 50px auto;">
   <form action="${pageContext.request.contextPath}/board/reviewWritePro" class="mb-3" name="myform" id="myform" method="post" enctype="multipart/form-data">
   <input type="hidden" name="num" value="${lessonDTO.num }">
   <input type="hidden" name="id" value="${sessionScope.id }">
   <Table>
   <tr><td>
	<div class="imagespace">
	<div id="image_container"></div>
		<input type="file" name="preview" id="image" accept="image/*" onchange="setThumbnail(event);" />
	</div>
   </td>
   <td style="width: 500px; text-align: right;">
   레슨명 : ${lessonDTO.subject }<br>
	<fieldset class="rating">
		<span class="text-bold">별점을 선택해주세요</span>
		<input type="radio" name="rating" value="5" id="rate1"><label for="rate1">★</label>
		<input type="radio" name="rating" value="4" id="rate2"><label for="rate2">★</label>
		<input type="radio" name="rating" value="3" id="rate3"><label for="rate3">★</label>
		<input type="radio" name="rating" value="2" id="rate4"><label for="rate4">★</label>
		<input type="radio" name="rating" value="1" id="rate5"><label for="rate5">★</label>
	</fieldset>
   </td></tr>
   
   <tr><td colspan="2">
	<div>
	<textarea style="width: 900px; margin: 5px;" class="col-auto form-control" name="content" id="reviewContents"
	placeholder="좋은 수강평을 남겨주시면 강사에게 큰 힘이 됩니다!"></textarea>
	</div>
   </td></tr>
   <tr><td></td><td style="text-align: right;"><input type="submit" class="btn btn-outline-info" value="등록"></td></tr>
   </Table>
    </form>		
</div>
</main>

<script>
    function setThumbnail(event) {
        var reader = new FileReader();
        reader.onload = function(event) {
            var img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            var imgContainer = document.querySelector("div#image_container");
            imgContainer.innerHTML = ''; 
            imgContainer.appendChild(img); 
        };
        reader.readAsDataURL(event.target.files[0]);
    }
</script>
</body>
</html>