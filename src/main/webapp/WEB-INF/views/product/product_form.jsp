<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SO:register</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

</head>
<body>


<div class="page-header">
<h1>ServcieOP <small>제품 등록</small></h1>
</div>

<a href="product_list.do" class="btn btn-default btn-lg">제품 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>



<div style="margin:0 auto; width: 500px;">

<form method=post action="register_product.do" id="regFrm">
  <div class="form-group">
    <label for="pVendor">Vendor*</label></br>
    <input type="radio" name="pVendor" id="pVendor" value="Oracle">Oracle
    <input type="radio" name="pVendor" id="pVendor" value="JenniferSoft">JenniferSoft
    <input type="radio" name="pVendor" id="pVendor" value="Sherpa">Sherpa
  </div>
  <div class="form-group">
    <label for="pName">Name*</label></br>
    <input type="radio" name="pName" id="pName" value="WebLogic">WebLogic
    <input type="radio" name="pName" id="pName" value="OHS">OHS
    <input type="radio" name="pName" id="pName" value="iPlanet">iPlanet
    <input type="radio" name="pName" id="pName" value="OracleDB">OracleDB
    <input type="radio" name="pName" id="pName" value="Coherence">Coherence</br>
    <input type="radio" name="pName" id="pName" value="SherpaOracle">SherpaOracle
    <input type="radio" name="pName" id="pName" value="SherpaTibero">SherpaTibero</br>
    <input type="radio" name="pName" id="pName" value="Jennifer4">Jennifer4
    <input type="radio" name="pName" id="pName" value="Jennifer5">Jennifer5
  </div>
  <div class="form-group">
    <label for="pVersion" class="control-label">Version*</label>
    <input type="text" class="form-control" name="pVersion" id="pVersion" placeholder="Version">
  </div>
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" id="rbtn" onclick='chkInp();'/>  
  </div>
</form>
</div>


<div class="page-header">
</div>
<h1>ServcieOP <small>제품 등록</small></h1>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>
function chkInp(){
	
	var a=$("#pVendor").val().replace(/ /g,"").length
	var b=$("#pName").val().replace(/ /g,"").length
	var c=$("#pVersion").val().replace(/ /g,"").length
	if((a*b*c)==0){
		alert("별표시는 필수 입력사항 입니다.")
	}else{
		$('#regFrm').submit();
	}
}

</script>

</body>
</html>