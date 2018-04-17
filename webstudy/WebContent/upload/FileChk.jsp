<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");

String subject = request.getParameter("subject");

String fileName1 = request.getParameter("fileName1");

String fileName2 = request.getParameter("fileName2");

String originName1 = request.getParameter("originName1");

String originName2 = request.getParameter("originName2");


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fileChk</title>
</head>
<body>
<h3>업로드 확인</h3>
올린사람:<%= name %><br>
제목:<%=subject %><br>
파일1:<a href="FileDown.jsp?file_name=<%= fileName1 %>"><%=originName1 %></a><br>
파일2:<a href="FileDown.jsp?file_name=<%= fileName2 %>"><%=originName2 %></a>

</body>
</html>