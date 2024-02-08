<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
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
    width: 100%;
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
            width: 400px;
            height: 250px;
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
            justify-content: space-between;
        }
        .imagespace, .rating {
            flex: 1;
        }
</style>
</head>
<body>
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

<main class="review_cover">
   <form class="mb-3" name="myform" id="myform" method="post">
        <section class="review_section">
            <div class="imagespace">
                <div id="image_container"></div>
                <input type="file" name="preview" id="image" accept="image/*" onchange="setThumbnail(event);" />
            </div>
            <fieldset class="rating">
                <span class="text-bold">별점을 선택해주세요</span>
                <input type="radio" name="reviewStar" value="5" id="rate1"><label for="rate1">★</label>
                <input type="radio" name="reviewStar" value="4" id="rate2"><label for="rate2">★</label>
                <input type="radio" name="reviewStar" value="3" id="rate3"><label for="rate3">★</label>
                <input type="radio" name="reviewStar" value="2" id="rate4"><label for="rate4">★</label>
                <input type="radio" name="reviewStar" value="1" id="rate5"><label for="rate5">★</label>
            </fieldset>
        </section>
        <div>
            <textarea class="col-auto form-control" name="text" id="reviewContents"
                      placeholder="좋은 수강평을 남겨주시면 Cocolo에 큰 힘이 됩니다! 포인트 5000p도 지급!!"></textarea>
        </div>
        <input type="submit" value="등록">
    </form>		
    </section>
</main>

</body>
</html>