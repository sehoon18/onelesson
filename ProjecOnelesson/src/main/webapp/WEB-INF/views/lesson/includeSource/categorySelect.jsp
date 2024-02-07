<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
    .select-wrapper {
      display: flex;
      width: 100%;
      max-width: 600px;
    }
    .select-wrapper select {
      width: 48%;
    }
  </style>
  <script>
  $(document).ready(function(){
    var subCategories = {
        "요리": ["베이킹", "쿠킹"],
        "스포츠": ["스키", "수영", "야구"],
        "공예": ["도자기", "목공예", "천공예"],
        "예술": ["그림", "음악", "무용"],
        "기타": ["기타"]
    };
    $('#category').change(function(){
      var selectedCategory = $(this).val();
      var subCategorySelect = $('#subCategory');
      subCategorySelect.empty();
      if (selectedCategory) {
        subCategories[selectedCategory].forEach(function(subCategory){
          var newOption = new Option(subCategory, subCategory, false, false);
          subCategorySelect.append(newOption);
        });
      }
    });
  });
  </script>
</head>
<body>
  <div class="mb-3 row">
  <label class="col-sm-2 col-form-label">카테고리</label>
    <div class="select-wrapper" >
      <select class="form-control" id="category">
        <option value="">-- 카테고리 선택 --</option>
        <option value="요리">요리</option>
        <option value="스포츠">스포츠</option>
        <option value="공예">공예</option>
        <option value="예술">예술</option>
        <option value="기타">기타</option>
      </select>
      <select class="form-control" id="subCategory" name="subCategory">
      </select>
    </div>
  </div>
</body>
</html>
