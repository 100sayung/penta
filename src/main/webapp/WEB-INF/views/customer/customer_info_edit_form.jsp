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

<form method="post" action="/suptman/customer/update-customer-info" accept-charset="utf-8" id="editFrm">
  <div class="form-group">
    <label for="cName" class="control-label">고객사 이름*</label>
  	<div id="customerList"></div>
  </div>
  <div class="form-group" id="product">
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
    <br>
    <select name="ciCheck">
    	<option value="유">유</option>
    	<option value="무">무</option>
    	<option value="기타">기타</option>
    </select>
    </div>
  <div class="form-group">
    <label for="ciDegree" class="control-label">지원 정도</label>
    <br>
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
    <label for="pId" class="control-label">담당엔지니어 ID*</label>
    <input type="text" class="form-control" name="pId" id="pId" placeholder="담당엔지니어 ID">
  	선택하도록 고르게 할 예정
  </div>
  <div class="form-group">
    <label for="ciMemo" class="control-label">특이사항</label>
    <input type="text" class="form-control" name="ciMemo" id="ciMemo" placeholder="메모">
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
<script src="${pageContext.request.contextPath}/resources/js/getCustomer.js?ver=1"></script>
<script src="${pageContext.request.contextPath}/resources/js/getProduct.js?ver=1"></script>

<script>

$(document).ready(function(){
	$("#product").html('<label for="pName" class="control-label">제품 이름*</label><br>'+loadProduct());
	$("#customerList").html(loadCustomerListFromPId("all"));
	$("#productVersion").html('<label for="pVersion" class="control-label">소프트웨어 버전*</label><br>'+loadProductVersion(${ci.getPName()});
	$("#pName").val(${ci.getPName()}).attr("selected", "selected");
	$("#cId").val(${ci.getCId()}).attr("selected", "selected");
	$("#pVersion").val(${ci.getPVersion()}).atrr("selected", "selected");
})

function chkInp(){
	
	var e=$("#ciHWOS").val().replace(/ /g,"").length;
	var f=$("#ciMonthly").val().replace(/ /g,"").length;
	var h=$("#pId").val().replace(/ /g,"").length;
	if((e*f*h)==0){
		alert("별표시는 필수 입력사항 입니다.");
	}else{
		$('#editFrm').submit();
	}
}

function changeSelection(){
	$("#productVersion").html('<label for="pVersion" class="control-label">소프트웨어 버전*</label><br>'+loadProductVersion($("#pName").val()));
}

</script>

</body>
</html>