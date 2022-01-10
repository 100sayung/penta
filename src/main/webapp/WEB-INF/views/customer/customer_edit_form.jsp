<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO:edit</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

</head>
<body>


<div class="page-header">
<h1>ServcieOP <small>고객사 등록</small></h1>
</div>

<a href="/suptman/customer/customer_list.do" class="btn btn-default btn-lg">고객사 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>


<div style="margin:0 auto; width: 500px;">

<form method="post" action="/suptman/customer/update-customer" accept-charset="utf-8" id="editFrm">
  <div class="form-group">
    <label class="control-label" for="cName">고객사 이름*</label>
    <input type="text" class="form-control" name="cName" value="${c.getCName()}" id="cName" placeholder="고객사이름">
  </div>
  <div class="form-group">
    <label for="cId" class="control-label">고객사 ID*</label>
    <input type="text" class="form-control" name="cId" value="${c.getCId()}" id="cId" placeholder="고객사 ID" disabled="disabled">
  </div> 
  <div class="form-group">
    <label for="cAddr" class="control-label">고객사 주소*</label>
    <input type="text" class="form-control" name="cAddr" value="${c.getCAddr()}" id="cAddr" placeholder="고객사 주소">
  </div>
  <div class="form-group">
    <label for="cSales" class="control-label">담당영업*</label>
    <input type="text" class="form-control" name="cSales" id="cSales"  value="${c.getCSales()}"placeholder="담당영업">
  </div> 
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" onclick="chkInp();"/>  
  </div>
  <input type="hidden" name="cIndex" value="${c.getCIndex()}">
</form>
</div>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>

function chkInp(){
	
	var a=$("#cName").val().replace(/ /g,"").length;
	var b=$("#cAddr").val().replace(/ /g,"").length;
	var d=$("#cId").val().replace(/ /g,"").length;
	var g=$("#cSales").val().replace(/ /g,"").length;
	if((a*b*d*g)==0){
		alert("별표시는 필수 입력사항 입니다.");
	}else{
		$('#editFrm').submit();
	}
}


</script>

</body>
</html>