<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 고객사 등록 </h1>
<br>
<a href ="/suptman/customer/customer_list.do"> 정보 페이지로 </a>
<hr>
<br>
<form method="post" action="/suptman/customer/regist-customer" accept-charset="utf-8">
<table>
<tr><td>고객사 이름</td><td><input type="text" name="cName"></td></tr>
<tr><td>고객사 주소</td><td><input type="text" name="cAddress"></td></tr>
<tr><td>제품 이름</td><td><input type="text" name="pName">반드시 Jennifer 입력 예외처리안해둠</td></tr>
<tr><td>제품 버전</td><td><input type="text" name="ciSftVer"></td></tr>
<tr><td>고객사 HW/OS</td><td><input type="text" name="ciHWOS"></td></tr>
<tr><td>대상 시스템</td><td><input type="text" name="ciSystem"></td></tr>
<tr><td>점검 유무</td><td><input type="text" name="ciCheck"></td></tr>
<tr><td>방문 횟수(월)</td><td><input type="text" name="ciMonthly"></td></tr>
<tr><td>지원정도(상중하)</td><td><input type="text" name="ciDegree"></td></tr>
<tr><td>담당영업</td><td><input type="text" name="cSales"></td></tr>
<tr><td>특이사항(메모)</td><td><input type="text" name="ciMemo"></td></tr>
<tr><td>임시)인덱스</td><td><input type="text" name="cIndex"> 반드시 숫자로 입력 예외처리안해둠</td></tr>
<tr><td>임시)담당엔지니어</td><td><input type="text" name="pId"> 반드시 ndh 입력 예외처리안해둠</td></tr>
<tr><td>
<button type="submit">등록</button>
</td></tr></table>
</form>

</body>
</html>