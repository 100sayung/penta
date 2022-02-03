<%@page import="com.penta.customer.CustomerVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/getCustomer.js?ver=1"></script>
	

<title>Insert title here</title>

</head>

<body>
	<div class="page-header">
		<h1>
			ServcieOP <small>고객사 리스트</small>
		</h1>
	</div>
	<a href="/suptman/customer/customer_regist.do" class="btn btn-default btn-lg">고객사 등록</a>
	<a href="/suptman/customer/customer_info_regist.do" class="btn btn-default btn-lg">고객사-제품 등록</a>
	<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

	<div class="container">
	<div class="row">
		<div class="col-md-6">
			<table class='table table-striped'>
				<thead><tr>
					<th>고객사이름</th><th>제품</th><th>버전</th><th>담당엔지니어</th><th>비고</th></tr>
				</thead><tbody>
					<c:forEach items="${customerInfo}" var="ci">
					<tr><td>${ci.getCName()}</td><td>${ci.getPName()}</td><td>${ci.getPVersion()}</td><td>${ci.getPentauser()}</td>
					<td><button type='button' class='click btn btn-info' onclick='readInfo("${ci.getCiIndex()}")'>자세히보기</button>
			<button type='button' class='click btn btn-info' onclick='updateInfo(${ci.getCiIndex()})'>변경하기</button></td>
					</c:forEach>		
				</tbody>
			</table>
		</div>
	<div class="col-md-6" id="test">
		이곳에 자세한정보 출력
	</div>
	</div>
	</div>


								
	<script type="text/javascript">
	
function readInfo(index) {
	$("#test").load("/suptman/customer/customer_info.do?ciIndex="+index);
}
function updateInfo(index) {
	location.href="/suptman/customer/customer_info_update.do?ciIndex="+index;
}


$(".click").click(function() {
	readInfo($(this).attr("id"));
});

function deleteClick(btn){
	console.log(btn.getAttribute("name"));
	 $.ajax({
		data:{idx_s : btn.getAttribute("name")},
		url:"/suptman/customer/rest/delete-customerinfo",
		success: function(data){
			location.reload();
		}, error : function(err){
			console.log(err);
		}
	}); 
}
	</script>
</body>
</html>