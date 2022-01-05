<%@page import="com.penta.common.CommonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="service_error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>service:register</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

</head>
<body>


<div class="page-header">
<h1>ServcieOP <small>Service 내역 등록</small></h1>
</div>

<a href="service_list.do" class="btn btn-default btn-lg">서비스 내역 리스트로</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>



<div style="margin:0 auto; width: 500px;">

<form method=post action="register_service.do" id="regFrm">
  <div class="form-group">
    <table class="table">
      <tbody>      
        <tr>
          <th scope="row">지원 사이트</th>
          <td><input type="hidden" class="form-control" name="sIndex" id="sIndex" placeholder="서비스인덱스">
            <input type="hidden" class="form-control" name="cIndex" id="cIndex" placeholder="회사인덱스">

            <select name='pType' id='pType'>              
              <c:forEach items="${pType}" var="pType">
                <option value="${pType.comKey}">${pType.comValue}</option>
              </c:forEach>
            </select>

          </td>
        </tr>
        <tr>
          <th scope="row">지원 타입</th>
          <td>
            <select name='sType' id='sType'>              
              <c:forEach items="${sType}" var="sType">
                <option value="${sType.comKey}">${sType.comValue}</option>
              </c:forEach>
            </select>
          </td>
        </tr>
        <tr>
          <th scope="row">공통 그룹 코드</th>
          <td><input type="text" size="4" maxlength="4" class="form-control" name="ComId" id="ComId" placeholder="공통 그룹 코드"></td>
        </tr>
        <tr>
          <th scope="row">공통 그룹 코드</th>
          <td><input type="text" size="4" maxlength="4" class="form-control" name="ComId" id="ComId" placeholder="공통 그룹 코드"></td>
        </tr>
      </tbody>
  
    <label for="ComKey" class="control-label">공통 Key</label>
    <input type="text" size="4" maxlength="4" class="form-control" name="ComKey" id="ComKey" placeholder="공통 Key">
  
    <label for="ComValue" class="control-label">공통 값</label>
    <input type="text" size="50" class="form-control" name="ComValue" id="ComValue" placeholder="공통 값">
  
    <input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" id="rbtn" onclick='chkInp();'/>  
    </table>
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
	
	var a=$("#ComId").val().replace(/ /g,"").length
	var b=$("#ComKey").val().replace(/ /g,"").length
	var c=$("#ComValue").val().replace(/ /g,"").length
	if((a*b*c)==0){
		alert("별표시는 필수 입력사항 입니다.")
	}else{
		$('#regFrm').submit();
	}
}

</script>

</body>
</html>