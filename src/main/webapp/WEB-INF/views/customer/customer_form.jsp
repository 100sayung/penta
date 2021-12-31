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

<form method="post" action="/suptman/customer/regist-customer" accept-charset="utf-8">
  <div class="form-group">
    <label class="control-label" for="cName">고객사 이름*</label>
    <input type="text" class="form-control" name="cName" id="cName" placeholder="고객사이름">
  </div>
  <div class="form-group">
    <label for="cAddr" class="control-label">고객사 주소*</label>
    <input type="text" class="form-control" name="cAddr" id="cAddr" placeholder="고객사 주소">
  </div>
  <div class="form-group" id="product">
<!--     <label for="pName" class="control-label">제품 이름*</label>
    <input type="text" class="form-control" name="pName" id="pName" placeholder="제품 이름"> -->
  </div> 
  <div class="form-group" id="productVersion">
  </div> 
  <div class="form-group">
    <label for="ciHWOS" class="control-label">고객사 HW/OS*</label>
    <input type="text" class="form-control" name="ciHWOS" id="ciHWOS" placeholder="대상 OS정보">
  </div> 
  <div class="form-group">
    <label for="ciSystem" class="control-label">대상 시스템 정보*</label>
    <input type="text" class="form-control" name="ciSystem" id="ciSystem" placeholder="ex.서버1대, 에이전트10대">
  </div> 
  <div class="form-group" class="form-control">
    <label for="ciCheck" class="control-label">점검 유무</label>
    <select name="ciCheck">
    	<option value="유">유</option>
    	<option value="무">무</option>
    	<option value="기타">기타</option>
    </select>
    </div>
  <div class="form-group">
    <label for="ciDegree" class="control-label">지원 정도</label>
    <select name="ciDegree">
    	<option value="상">상</option>
    	<option value="중">중</option>
    	<option value="하">하</option>
    </select>
  </div>
  <div class="form-group">
    <label for="ciMonthly" class="control-label">월 방문횟수*</label>
    <input type="text" class="form-control" name="ciMonthly" id="ciMonthly" placeholder="월 방문횟수">
  </div> 
  <div class="form-group">
    <label for="cSales" class="control-label">담당영업*</label>
    <input type="text" class="form-control" name="cSales" id="cSales" placeholder="담당영업">
  </div> 
  <div class="form-group">
    <label for="ciMemo" class="control-label">특이사항</label>
    <input type="text" class="form-control" name="ciMemo" id="ciMemo" placeholder="월 방문횟수">
  </div> 
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" onclick="chkInp();"/>  
  </div>
</form>
</div>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/getProduct.js"></script>

<script>

$(document).ready(function(){
	$("#product").html(loadProduct());
})

function chkInp(){
	
	var a=$("#cName").val().replace(/ /g,"").length;
	var b=$("#cAddr").val().replace(/ /g,"").length;
	var c=$("#pName").val().replace(/ /g,"").length;
	var c=$("#ciSftVer").val().replace(/ /g,"").length;
	var d=$("#ciHWOS").val().replace(/ /g,"").length;
	var f=$("#ciMonthly").val().replace(/ /g,"").length;
	var g=$("#cSales").val().replace(/ /g,"").length;
	if((a*b*c*d*e*f*g)==0){
		alert("별표시는 필수 입력사항 입니다.");
	}else{
		$('#editFrm').submit();
	}
}

function changeSelection(){
	$("#productVersion").html(loadProductVersion($("#pName").val()));
}

</script>

</body>
</html>