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
<h1>ServcieOP <small>고객 등록</small></h1>
</div>

<a href="manager_list.do" class="btn btn-default btn-lg">고객 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>



<div style="margin:0 auto; width: 500px;">

<form method=post action="register_manager.do" id="regFrm">
  <div class="form-group">
    <label class="control-label" for="mCom">회사*</label>
    <input type="text" class="form-control" name="mCom" id="mCom" placeholder="회사">
  </div>
  <div class="form-group">
    <label for="mId" class="control-label">아이디*</label>
    <input type="text" class="form-control" name="mId" id="mId" placeholder="아이디">
  </div>
  <div class="form-group">
    <label for="mName" class="control-label">이름*</label>
    <input type="text" class="form-control" name="mName" id="mName" placeholder="이름">
  </div>  
  <div class="form-group">
    <label for="mAddr" class="control-label">주소*</label>
    <input type="text" class="form-control" name="mAddr" id="mAddr" placeholder="주소">
  </div>
  <div class="form-group">
    <label for="mHp" class="control-label">핸드폰*</label>
    <input type="text" class="form-control" name="mHp" id="mHp" placeholder="핸드폰">
  </div>
  <div class="form-group">
    <label for="mTel" class="control-label">연락처</label>
    <input type="text" class="form-control" name="mTel" id="mTel" placeholder="연락처">
  </div>
  <div class="form-group">
    <label for="mEmail" class="control-label">이메일*</label>
    <input type="text" class="form-control" name="mEmail" id="mEmail" placeholder="이메일">
  </div>  
  <div class="form-group">
    <label for="mTask" class="control-label">업무*</label>
    <input type="text" class="form-control" name="mTask" id="mTask" placeholder="업무">
  </div>

  <div class="form-group">
    <label for="mWorkcom" class="control-label">실제 근무지</label>
    <input type="text" class="form-control" name="mWorkcom" id="mWorkcom" placeholder="실제 근무지">
  </div>
  <div class="form-group">
    <label for="mWorkemail" class="control-label">실제 이메일</label>
    <input type="text" class="form-control" name="mWorkemail" id="mWorkemail" placeholder="실제 이메일">
  </div> 
  <div class="form-group">
    <label for="mMemo" class="control-label">메모</label>
    <textarea class="form-control" name="mMemo" id="mMemo" rows="5"></textarea>
  </div>
  <div class="form-group">
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" id="rbtn" onclick='chkInp();'/>  
  </div>
</form>
</div>


<div class="page-header">
</div>
<h1>ServcieOP <small>고객 등록</small></h1>


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>
function chkInp(){
	
	var a=$("#mCom").val().replace(/ /g,"").length
	var b=$("#mId").val().replace(/ /g,"").length
	var c=$("#mName").val().replace(/ /g,"").length
	var e=$("#mAddr").val().replace(/ /g,"").length
	var d=$("#mHp").val().replace(/ /g,"").length
	var f=$("#mEmail").val().replace(/ /g,"").length
	var g=$("#mTask").val().replace(/ /g,"").length
	if((a*b*c*d*e*f*g)==0){
		alert("별표시는 필수 입력사항 입니다.")
	}else{
		$('#regFrm').submit();
	}
}

</script>

</body>
</html>