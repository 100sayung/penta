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

<title>Insert title here</title>

</head>

<body>
	<div class="page-header">
		<h1>
			ServcieOP <small>고객사 리스트</small>
		</h1>
	</div>
	<a href="/suptman/customer/customer_regist.do" class="btn btn-default btn-lg">고객사 등록</a>
	<a href="/suptman" class="btn btn-default btn-lg">홈으로</a>

	<div class="container">
	<div class="row">
		<div class="col-md-6">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>고객사 이름</th>
					<th>주소</th>
					<th>담당 영업</th>
					<th>비고</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${customer}" var="c">

					<tr>
						<td>${c.getCIndex()}</td>
						<td>${c.getCAddr()}</td>
						<td>${c.getCSales()}</td>
						<td><button type='button' class='click btn btn-info'
								onclick='readInfo("${c.getCIndex()}")'>더 보기</button>
							<button type='button' class='click btn btn-info'
								onclick='updateInfo("${customerInfo.getCIndex()}")'>변경하기</button></td>
								
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <a href="/suptman/customer/customer_regist.do">추가하기</a>
	</div>
	<div class="col-md-6" id="test">
	이곳에 자세한정보 출력
	</div>
		</div>
	</div>

								
	<script type="text/javascript">
	
function updateInfo(idx) {
	location.href="/suptman/customer/customer_update.do?cIndex="+idx;
}
	
		function readInfo(idx) {
			//비동기로 정보 읽어옴
			alert("잠시 기다려주세요");
			let tempText = "good" + idx
			console.log(tempText);
			
	/* 	 	$.ajax({
				data:{cIndex : idx},
				url:"/suptman/customer/customer_info.do",
				dataType:'json',
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: function(data){
					$("#test").load(data); 
					console.log(data);
				}, error: function(err){
					console.log(err);
				}
			}) */
			$("#test").load("/suptman/customer/customer_info.do?cIndex="+idx);
			
		}

		$(".click").click(function() {
			readInfo($(this).attr("id"));
		})
		
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
		
		
		//엔지니어 목
		
	</script>
</body>
</html>