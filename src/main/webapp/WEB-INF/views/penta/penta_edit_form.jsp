<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="penta_error.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SO:edit</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

</head>
<body>


<div class="page-header">
<h1>ServcieOP <small>팀원 변경</small></h1>
</div>

<a href="penta_list.do" class="btn btn-default btn-lg">고객 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>


<div style="margin:0 auto; width: 500px;">

<form method=post action="edit_penta.do" id="editFrm">  
  <div class="form-group">
    <input type="hidden" name="pIndex" id="pIndex" value="${cvo.PIndex}">
    <label for="pId" class="control-label">아이디*</label>
    <input type="text" class="form-control" name="pId" id="pId" value="${cvo.PId}" placeholder="아이디">
  </div>
  <div class="form-group">
    <label for="pName" class="control-label">이름*</label>
    <input type="text" class="form-control" name="pName" id="pName" value="${cvo.PName}" placeholder="이름">
  </div>  
  <div class="form-group">
    <label for="pAddr" class="control-label">주소*</label>
    <input type="text" class="form-control" name="pAddr" id="pAddr" value="${cvo.PAddr}" placeholder="주소">
  </div>
  <div class="form-group">
    <label for="pHp" class="control-label">핸드폰*</label>
    <input type="text" class="form-control" name="pHp" id="pHp" value="${cvo.PHp}" placeholder="핸드폰">
  </div>
  <div class="form-group">
    <label for="pRank" class="control-label">직급</label>
    <input type="text" class="form-control" name="pRank" id="pRank" value="${cvo.PRank}" placeholder="직급">
  </div>
  <div class="form-group">
    <label for="pEmail" class="control-label">이메일*</label>
    <input type="text" class="form-control" name="pEmail" id="pEmail" value="${cvo.PEmail}" placeholder="이메일">
  </div>  
  <div class="form-group">
    <label for="pType" class="control-label">파트구분</label>
    <input type="text" class="form-control" name="pType" id="pType" value="${cvo.PType}" placeholder="파트구분">
  </div> 
  <div class="form-group">
    <label for="pMemo" class="control-label">메모</label>
    <textarea class="form-control" name="pMemo" id="pMemo" rows="5">${cvo.PMemo}</textarea>
  </div>
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="변경하기" onclick="chkInp();"/>  
  </div>
</form>
</div>


<div class="page-header">
</div>
<h1>ServcieOP <small>고객 변경</small></h1>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>
function chkInp(){	
	var a=$("#pId").val().replace(/ /g,"").length
	var b=$("#pName").val().replace(/ /g,"").length
	var c=$("#pAddr").val().replace(/ /g,"").length
	var d=$("#pHp").val().replace(/ /g,"").length
	var f=$("#pEmail").val().replace(/ /g,"").length
	var g=$("#pMemo").val().replace(/ /g,"").length  
	if((a*b*c*d*f*g)==0){    
		alert("별표시는 필수 입력사항 입니다.")
	}else{    
		$('#editFrm').submit();
	}
}

</script>


</body>
</html>