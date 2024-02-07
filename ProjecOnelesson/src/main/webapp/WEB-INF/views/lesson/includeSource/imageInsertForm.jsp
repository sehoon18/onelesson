<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>썸네일 만들기</title>
</head>
<style>
  #image_container {
    width: 300px;
    height: 200px;
    border: 1px solid #ccc; 
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .imagespace{
  	padding: 10px;
    border: 1px solid #ccc; 
  }
</style>
<body>
<div class="imagespace">
	<div id="image_container"></div>
	<input type="file" id="image" accept="image/*"
		onchange="setThumbnail(event);" />
</div>
	<script>
      function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var imageContainer = document.querySelector("div#image_container");
          while (imageContainer.firstChild) {
            imageContainer.removeChild(imageContainer.firstChild);
          }
        	
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          img.style.width = '300px';
          img.style.height = '200px';	
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }
    </script>
</body>
</html>
