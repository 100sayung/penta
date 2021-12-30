<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<title>Insert title here</title>

</head>

<body>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand">Navbar</a>
    <form class="d-flex">
<!--       <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button> -->
    </form>
  </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-sm-12">
	<h1>고객사 리스트 페이지</h1>
        </div>
        <div class="col-sm-12">
	<div id="test">여기에 상세정보출력</div>
        </div>
        <div class="col-sm-8">
	<select name="engineer">
		<option value="test">test</option>
	</select> 엔지니어 목록 받아서 넣을 예정
	<br>
	<br>로그인 시 자기 고객사 리스트 출력
	<br>
<!-- 	<table border="1">
		<tr>
			<td>엔지니어</td>
			<td>고객사명</td>
			<td>지원제품</td>
			<td>고객사주소</td>
			<td>담당영업</td>
			<td>더보기</td>
		</tr>

		<tr>
			<td>남동훈</td>
			<td>펜타시스템</td>
			<td>웹로직</td>
			<td>여의나루역</td>
			<td>남동훈</td>
			<td><a id="click">클릭</a></td>
		</tr>

	</table> -->
	${customertable }
	<br>
	<a href="/suptman/customer/customer_regist.do">추가하기</a>

        </div>
        <div class="col-sm-4">
        </div>
    </div>
</div>

	<script type="text/javascript">
		function readInfo(idx) {
			//비동기로 정보 읽어옴
			alert("잠시 기다려주세요");
			let tempText = "good" + idx
			console.log(tempText);
			
			$.ajax({
				data:{idx_s : idx},
				url:"/suptman/customer/rest/get-customerinfo",
				dataType:'json',
				contentType: "application/x-www-form-urlencoded; charset=UTF-8",
				success: function(data){
					var str ='<table border="1" class="table table-striped"><tr><td>고객사 이름</td><td>'+data.cName+'</td></tr>'
					+'<tr><td>고객사 주소</td><td>'+data.cAddress+'</td></tr>'
					+'<tr><td>제품 이름</td><td>'+data.pName+'</td></tr>'
					+'<tr><td>제품 버전</td><td>'+data.ciSftVer+'</td></tr>'
					+'<tr><td>고객사 HW/OS</td><td>'+data.ciHWOS+'</td></tr>'
					+'<tr><td>대상 시스템</td><td>'+data.ciSystem+'</td></tr>'
					+'<tr><td>점검 유무</td><td>'+data.ciCheck+'</td></tr>'
					+'<tr><td>방문 횟수(월)</td><td>'+data.ciMonthly+'</td></tr>'
					+'<tr><td>지원정도(상중하)</td><td>'+data.ciDegree+'</td></tr>'
					+'<tr><td>담당영업</td><td>'+data.cSales+'</td></tr>'
					+'<tr><td>특이사항(메모)</td><td>'+data.ciMemo+'</td></tr>'
					+'<tr><td>임시)담당엔지니어</td><td>'+data.pId+'</td></tr>'
					+'</table><br><button id="deleteBtn" name="'+data.cIndex+'" class="btn btn-outline-success" onclick="deleteClick(this)">삭제하기</button><br>';
					console.log(str);
					$("#test").html(str);
				}, error: function(err){
					console.log(err);
				}
			
			})
			
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