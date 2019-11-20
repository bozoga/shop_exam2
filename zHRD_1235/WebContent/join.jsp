<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DBPKG.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css">
<script>
    function checkInfo(){
        if(document.getElementById("name").value==0){
        	alert("이름이 입력되지 않았습니다");
        	document.getElementById('name').focus();
  			return;
        }
        else if(document.getElementById("phone").value==0 ){
        	alert("폰번호가 입력되지 않았습니다");
        	document.getElementById('phone').focus();
  			return;
        }
        else if(document.getElementById("addr").value==0){
        	alert("주소가가 입력되지 않았습니다");
        	document.getElementById('addr').focus();
  			return;
        }
        else if(document.getElementById("joinedDate").value==0 ){
        	alert("가입일이 입력되지 않았습니다");
        	document.getElementById('joinedDate').focus();
  			return;
        }
        else if(document.getElementById("grade").value==0 ){
        	alert("등급이 입력되지 않았습니다");
        	document.getElementById('grade').focus();
  			return;
        }
        else if(document.getElementById("cityCode").value==0){
        	alert("시티코드가 입력되지 않았습니다");
        	document.getElementById('cityCode').focus();
  			return;
        }
        else{
        	alert("회원가입이 완료되었습니다");
        	document.fm.action="joinPro.jsp";
        	document.fm.method="post";
        	document.fm.submit();
        }
    }
</script>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	memberDAO dao= memberDAO.getInstance();
%>
	<header>
		쇼핑몰 회원관리 ver1.0
	</header>
		
	
	<nav>
		<a href="join.jsp">회원등록</a>
		<a href="searchResult.jsp">회원목록 조회/수정</a>
		<a href="saleResult.jsp">회원매출조회</a>
		<a href="Index.jsp">홈으로.</a>
	</nav>
	
	<section>
		<h2 class="cc">홈쇼핑 회원등록</h2>
		<div class="content">
		<form name="fm" method="post">
	    	<table border="1">
                <tr>
                    <td>회원번호(자동발생)</td>
                    <td id="td2"><input type="text" name="no" value="<%= dao.count()%>" readonly/></td>
                </tr>
                <tr>
                    <td>회원성명</td>
                    <td id="td2"><input type="text" name="name" id="name" value=""/></td>
                </tr>
                <tr>
                    <td>회원전화</td>
                    <td id="td2"><input type="text" name="tel" id="phone" value=""/></td>
                </tr>
                <tr>
                    <td>회원주소</td>
                    <td id="td2"><input type="text" name="addr" id="addr" value=""/></td>
                </tr>
                <tr>
                    <td>가입일자</td>
                    <td id="td2"><input type="text" name="joinedDate" id="joinedDate" value=""/></td>
                </tr>
                <tr>
                    <td>고객등급</td>
                    <td id="td2"><input type="text" name="grade" id="grade" value=""/></td>
                </tr>
                <tr>
                    <td>도시코드</td>
                    <td id="td2"><input type="text" name="cityCode" id="cityCode" value=""/></td>
                </tr>
                <tr>
                    <td colspan="2">
                    	<input type="button" onclick="checkInfo()" value="등록"/>
                        <!-- <button type="submit" onclick="checkInfo()">등록</button> -->
                    	<input type="reset" value="조회" onclick="location.href='searchResult.jsp'"/>
                    </td>

                </tr>
            </table>
            </form>
           </div>
	</section>
	
	<footer>
		HRD KOREA
	</footer>
</body>
</html>