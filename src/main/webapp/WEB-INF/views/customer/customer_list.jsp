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
		<select name='pName' id='pName' onchange='changeSelection()'>
			<option value="all" selected="selected">모두보기</option>
			<c:forEach items="${engineer}" var="e">
				<option value="${e.getPId()}">${e.getPName()} ${e.getPRank()}</option>
			</c:forEach>
		</select>
			<div id="customerBody">
			</div>
		<br> <a href="/suptman/customer/customer_regist.do">추가하기</a>
	</div>
	</div>
	
<button type="button" class="click btn btn-info" onclick="readInfo(penta)">자세히보기</button>
								
	<script type="text/javascript">
function readInfo(id) {
	location.href="/suptman/customer/customer_info_list.do?cId="+id;
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

function changeSelection(){ //resource/js/getCustomer.js 참조
	makeCustomerTable(getCustomerListFromPId($("#pName").val()));
}

function makeCustomerTable(customerList){
	var str = "<table class='table table-striped' id='contents'><thead><tr>";
	str +="<th>고객사ID</th><th>고객사이름</th><th>주소</th><th>담당영업</th><th>비고</th></tr></thead><tbody>";
	console.log(customerList);
	for(var c in customerList){
		str += "<tr><td>" + customerList[c].cId + "</td>";
		str += "<td>" + customerList[c].cName + "</td>";
		str += "<td>" + customerList[c].cAddr + "</td>";
		str += "<td>" + customerList[c].cSales + "</td>";
		str += "<td><button type='button' class='click btn btn-info' onclick='readInfo(\""+customerList[c].cId+"\")'>자세히보기</button>";
		str += "<button type='button' class='click btn btn-info' onclick='location.href=\"/suptman/customer/customer_update.do?cId="+customerList[c].cId+"\"'>변경하기</button></td>";
	}
	str+="</tbody></table>";
	$("#customerBody").html(str);
	
}

//문서 로딩될 때 출력하기 위해
$(function (){
	makeCustomerTable(getCustomerListFromPId($("#pName").val()));
})

		//엔지니어 목
	</script>
</body>
</html>