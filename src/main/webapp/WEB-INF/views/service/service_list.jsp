<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="service_error.jsp" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>service:list</title>
</head>


<body>
<div class="page-header">
  <h1>ServcieOP <small>서비스 내역 리스트</small></h1>
</div>
<a href="service_form.do" class="btn btn-default btn-lg">서비스 내역 등록</a>
<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

<form name="contents">
  <input type="hidden" name="scId"/>  
<table class="table table-striped">
  <thead>
    <tr>
      <th></th>
      <th>고객사</th>
      <th>고객 담당자</th>
      <th>지원제품</th>
      <th>지원 담당자</th>
      <th>방문일</th>
      <th>지원시간</th>
      <th>첨부파일</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${list}" var="serv">
    <tr>      
      <td><input type="hidden" value="${serv.SIndex}" readonly></td>
       ${serv}
      <td>${serv.scId}</td>
      <td>${serv.smId}</td>
      <td>${serv.sprId}</td>
      <td>${serv.speId}</td>
      <td>${serv.SInDate}</td>
      <td>${serv.SServTime} 시간</td>
      <td>${serv.SFileName}</td>
     
      <td>
          <input type="button" class="btn btn-default" onclick="location.href='service_edit.do?cidx=${serv.SIndex}'" value="변경">
          <input type="button" class="btn btn-default" onclick="javascript:list_view('penta')" value="Test">
          <input type="button" class="btn btn-default" onclick="location.href='delete_service.do?cidx=${serv.SIndex}'" value="삭제">
      </td>
    </tr>
    </c:forEach>

  </tbody>
</table>
</form>

<div class="page-header">
</div>

<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>

<script>
  function list_view(cidx){
    alert("list_view");
    var f=document.contents;   //폼 name
    // myWin=window.open('','POP','location=no,status=no,toolbar=no,scrollbars=no,width=650,height=650');
    f.scId.value = cidx;    //POST방식으로 넘기고 싶은 값(hidden 변수에 값을 넣음)
    f.action="service_list.do"; //이동할 페이지
    // f.target="POP";    //폼의 타겟 지정(위의 새창을 지정함)
    f.method="post"; //POST방식
    alert(f.scId.value);
    f.submit();
  }
</script>

</body>
</html>