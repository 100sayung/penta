<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
 <tr><td>담당 엔지니어</td><td>${customerInfo.getPId()}</td></tr>
<tr><td>고객사 이름</td><td>${customerInfo.getCName()}</td></tr>
<tr><td>고객사 주소</td><td>${customerInfo.getCAddr()}</td></tr>
<tr><td>제품 이름</td><td>${customerInfo.getPName()}</td></tr>
<tr><td>제품 버전</td><td>${customerInfo.getPVersion()}</td></tr>
<tr><td>고객사 HW/OS</td><td>${customerInfo.getCiHWOS()}</td></tr>
<tr><td>대상 시스템</td><td>${customerInfo.getCiSystem()}</td></tr>
<tr><td>점검 유무</td><td>${customerInfo.getCiCheck()}</td></tr>
<tr><td>방문 횟수(월)</td><td>${customerInfo.getCiMonthly()}</td></tr>
<tr><td>지원정도(상중하)</td><td>${customerInfo.getCiDegree()}</td></tr>
<tr><td>담당영업</td><td>${customerInfo.getCSales()}</td></tr>
<tr><td>메모</td><td>${customerInfo.getCiMemo()}</td></tr>
	</table>
</body>
</html>