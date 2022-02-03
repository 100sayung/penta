<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css">

	<title>SO:home</title>
</head>
<body>
<div class="page-header">
<h1>ServcieOP <small>환영합니다</small></h1>
</div>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col" style="width: 25%;">#</th>
      <th scope="col" style="width: 25%;">공지사항</th>
      <th scope="col" style="width: 25%;">담당자</th>
      <th scope="col" style="width: 25%;">업무</th>
    </tr>
  </thead>
  <tbody>
    <tr>      
      <td colspan="2" rowspan="6">
        Oracle PSU 정리 <br>

- psu file download 파일 서버 upload 후 다운로드 링크 공유<br>
- patch 이후 필요한것 체크 - 2021년 06이후 security report - coherence patch <br>
- 정리된 내용 메일로 공유<br>

- 박기범, 김경하 사원 -><br>
<br>
google Drive 제품 정리<br>
- 제품 관리 - 남동훈 사원 -><br>
<br>
회사 서버 관리<br>
= 환결 설정 변화시 공유<br>
- 37 남동훈 사원 -><br>
==> <a href="/suptman/common/37Project.do" target="new">개발플젝 info</a><br>
==> 공통 제품 관리 192.168.100.37 /u01/sw/oracle 참조해서 쓰기<br>
- 38 주영환 책임 -><br>
==> <a href="/suptman/common/38Project.do" target="new">38 Server info</a><br>
- 192.168.133.10 주영환 책임 -><br>      
URL: <a href="https://192.168.133.10/" target="_blank">https://192.168.133.10/</a><br>
        <br>
      <table style="width: 100%;border: 1px;" >
        <tr>
          <td>
            =======<br>
            PentaSystem Link<br>
            =======<br>
          </td>
          <td>
            - <a href="http://www.penta.co.kr" target="_blank">Penta Homepage</a><br>
            - <a href="http://gw.penta.co.kr" target="_blank">GroupWare</a><br>
            - <a href="http://file.penta.co.kr" target="_blank">FileSystem</a><br>
            <br>                     
          </td>
          <td>
            
          </td>
          <td>
            
          </td>
        
        </tr>
        <tr>
          <td>
            =======<br>
            Jennifer Link<br>
            =======<br>
          </td>
          <td>
            <br>
            - <a href="http://support.jennifersoft.com:27900/login" target="_blank">Demo Jennifer</a><br>
            - <a href="http://192.168.100.37:7979/login" target="_blank">Demo So</a><br>
            - <a href="https://home.jennifersoft.com/login.jsp" target="_blank">License</a><br>
            - <a href="http://issue.jennifersoft.com/secure/Dashboard.jspa" target="_blank">Jira</a><br>
            - <a href="https://docs.jennifersoft.com/" target="_blank">Docs</a><br>
          </td>
          <td>
            =======<br>
            Oracle Link<br>
            =======<br>
          </td>
          <td>
            - <a href="http://Support.oracle.com" target="_blank">Support</a><br>
            - <a href="http://edelivery.oracle.com/" target="_blank">edelivery 제품 다운로드</a><br>
          </td>
        
        </tr>
        
      </table>


<br>
      </td>
      <td>안일훈</td>
      <td><a href="/suptman/common/common_list.do" class="btn btn-default btn-lg" >공통 리스트</a></td>
    </tr>
    <tr>
      <td>김경하</td>
      <td><a href="/suptman/product/product_list.do" class="btn btn-default btn-lg" >제품 리스트</a></td>
    </tr>
    <tr>      
      <td>남동훈</td>
      <td><a href="/suptman/customer/customer_list.do" class="btn btn-default btn-lg" >고객사 리스트</a></td>
    </tr>
    <tr>      
      <td>박기범</td>
      <td><a href="/suptman/manager/manager_list.do" class="btn btn-default btn-lg" >고객 담당자 리스트</a></td>
    </tr>
    <tr>     
      <td>안일훈</td>
      <td><a href="/suptman/penta/penta_list.do" class="btn btn-default btn-lg" >팀원 리스트</a></td>
    </tr>    
    <tr>     
      <td>안일훈</td>
      <td><a href="/suptman/service/service_list.do?scId=penta" class="btn btn-default btn-lg" >지원 내역(Support) 리스트</a></td>
    </tr>
  </tbody>
</table>

<div class="page-footer">
  <P style="color: red;"><b>  해당 페이지 수정하지 마세요.  </b></P>
</div>

<footer>
  <P>  The time on the server is ${serverTime}. </P>
</footer>



<script>
  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
</script>
</body>
</html>