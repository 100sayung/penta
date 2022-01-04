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
<h1>ServcieOP <small>팀원 등록</small></h1>
</div>

<a href="penta_list.do" class="btn btn-default btn-lg">팀원 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>



<div style="margin:0 auto; width: 500px;">

<form method=post action="register_penta.do" id="regFrm">  
  <div class="form-group">
    <label for="pId" class="control-label">아이디*</label>
    <input type="text" class="form-control" name="pId" id="pId" placeholder="아이디">
  </div>
  <div class="form-group">
    <label for="pName" class="control-label">이름*</label>
    <input type="text" class="form-control" name="pName" id="pName" placeholder="이름">
  </div>  
  <div class="form-group">
    <label for="pRank" class="control-label">직급*</label>
    <input type="text" class="form-control" name="pRank" id="pRank" placeholder="직급">
  </div>
  <div class="form-group">
    <label for="pHp" class="control-label">핸드폰*</label>
    <input type="text" class="form-control" name="pHp" id="pHp" placeholder="핸드폰">
  </div>
  <div class="form-group">
    <label for="pEmail" class="control-label">이메일*</label>
    <input type="text" class="form-control" name="pEmail" id="pEmail" placeholder="이메일">
  </div>  
  <div class="form-group">
    <label for="pAddr" class="control-label">주소*</label>
    <input type="text" class="form-control" name="pAddr" id="pAddr" placeholder="주소">
  </div>
  <div class="form-group">
    <label for="pType" class="control-label">파트구분</label>
    <input type="text" class="form-control" name="pType" id="pType" placeholder="파트구분">
  </div>
  <div class="form-group">
    <label for="pStatus" class="control-label">재직상태</label>
    <input type="text" class="form-control" name="pStatus" id="pStatus" placeholder="재직상태">
  </div>
  <div class="form-group">
    <label for="pMemo" class="control-label">메모</label>
    <textarea class="form-control" name="pMemo" id="pMemo" rows="5"></textarea>
  </div>
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" id="rbtn" onclick='chkInp();'/>  
  </div>
</form>
</div>


<div class="page-header">
</div>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>
function chkInp(){
	
	var b=$("#pId").val().replace(/ /g,"").length
	var c=$("#pName").val().replace(/ /g,"").length
	var e=$("#pAddr").val().replace(/ /g,"").length
	var d=$("#pHp").val().replace(/ /g,"").length
	var f=$("#pEmail").val().replace(/ /g,"").length	
	if((b*c*d*e*f)==0){
		alert("별표시는 필수 입력사항 입니다.")
	}else{
		$('#regFrm').submit();
	}
}

</script>

</body>
</html>