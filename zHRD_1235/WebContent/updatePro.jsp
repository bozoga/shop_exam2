<%@page import="java.sql.Date"%>
<%@page import="sun.security.jca.GetInstance"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DBPKG.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String no=request.getParameter("no");
	String name=request.getParameter("name");
	String tel=request.getParameter("tel");
	String addr=request.getParameter("addr");
	String joinedDate=request.getParameter("joinedDate");
	String grade=request.getParameter("grade");
	String cityCode=request.getParameter("cityCode");
	
	memberDAO dao = memberDAO.getInstance();
	mVO vo = new mVO();
	vo.setAddress(addr);
	vo.setCity(cityCode);
	vo.setCustname(name);
	vo.setCustno(no);
	vo.setGrade(grade);
	vo.setJoindate(joinedDate);
	vo.setPhone(tel);
	dao.updatePro(vo);
	%>
<script>
location.href="searchResult.jsp";
</script>
</body>
</html>