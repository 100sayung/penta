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
    <table class="table" style="border: 1px;">
      <tbody>      
        <tr>
          <th scope="row">지원 사이트</th>
          <td><input type="hidden" class="form-control" name="scId" id="scId">            
            <div id="customerList"></div>
          </td>
        </tr>
        <tr>
          <th scope="row">고객사 담당자</th>
          <td><input type="text" class="form-control" name="smId" id="smId" placeholder="고객사 담당자"></td>
        </tr>
        <tr>
          <th scope="row">지원 제품</th>
          <td><input type="hidden" class="form-control" name="sprId" id="sprId">
            <div id="productList"></div></td>
        </tr>
        <tr>
          <th scope="row">지원 엔지니어</th>
          <td><input type="text" class="form-control" name="speId" id="speId" placeholder="지원 엔지니어">
          로그인시 자동으로 받아 오게
          </td>
        </tr>
        <tr>
          <th scope="row">지원 타입</th>
          <td>
            <select name='sType' id='sType' class="form-select" aria-label="Default select example">              
              <c:forEach items="${sType}" var="sType">
                <option value="${sType.comKey}">${sType.comValue}</option>
              </c:forEach>
            </select>
          </td>
        </tr>
        <tr>
          <th scope="row">지원 내역</th>
          <td><textarea class="form-control" name="sWork" id="sWork" placeholder="지원 내역"></textarea></td>
        </tr>
        <tr>
          <th scope="row">기타 메모</th>
          <td><textarea class="form-control" name="sMemo" id="sMemo" placeholder="기타 메모"></textarea></td>
        </tr>
        <tr>
          <th scope="row">방문 시작일</th>
          <td><input type="date" class="form-control" name="sInDate" id="sInDate" value="2022-01-06" placeholder="방문 시작일"></td>
        </tr>
        <tr>
          <th scope="row">방문 시간</th>
          <td><input type="time" class="form-control" name="sInTime" id="sInTime" value="10:00" placeholder="방문 시간"></td>
        </tr>
        <tr>
          <th scope="row">방문 종료 시간</th>
          <td><input type="time" class="form-control" name="sEndTime" id="sEndTime" value="15:00" placeholder="방문 종료 시간"></td>
        </tr>
        <tr>
          <th scope="row">방문 종료일</th>
          <td><input type="date" class="form-control" name="sEndDate" id="sEndDate" placeholder="방문 종료일"></td>
        </tr>
        <tr>
          <th scope="row">지원 시간</th>
          <td><input type="text" class="form-control" name="sServTime" id="sServTime" placeholder="지원시간"></td>
        </tr>
        <tr>
          <th scope="row">첨부 파일</th>
          <td><input type="file" class="form-control" name="sFileName" id="sFileName" placeholder="첨부 파일"></td>
        </tr>
        <tr>
          <td colspan="2"><input type="button" class="btn btn-default btn-lg btn-block" value="등록하기" id="rbtn" onclick='chkInp();'/> </td>
        </tr>
      </tbody>
 
     
    </table>
  </div>
</form>
</div>
<script>
moment().format('MMMM Do YYYY, h:mm:ss a');
</script>
<div class="page-header">
</div>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>

<!-- 날자 시간 관련 JS-->
<script src="${pageContext.request.contextPath}/resources/moment/moment.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/getCustomer.js?ver=1"></script>
<script src="${pageContext.request.contextPath}/resources/js/getProduct.js?ver=1"></script>

<script>

$(document).ready(function(){
	$("#productList").html(loadProduct());
	$("#customerList").html(loadCustomerListFromPId("all"));
	$("#productVersion").html('<label for="pVersion" class="control-label">소프트웨어 버전*</label><br>'+loadProductVersion($("#pName").val()));
})
</script>
<script>
function chkInp(){

  alert($("#sInDate").val());
  alert($("#sInTime").val());
  
  $("#scId").val($("#cId").val());
  $("#sprId").val($("#pName").val());

	var a=$("#cId").val().replace(/ /g,"").length   // 고객 아이디
	var b=$("#smId").val().replace(/ /g,"").length  // 고객 담당자
	var c=$("#sprId").val().replace(/ /g,"").length // 제품 아이디   
	if((a*b*c)==0){
		alert("별표시는 필수 입력사항 입니다.")
	}else{  
		$('#regFrm').submit();
	}  
}

</script>

</body>
</html>