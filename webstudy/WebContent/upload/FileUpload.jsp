<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	String UploadPath = request.getRealPath("/upload");
	out.print("realpath:" + UploadPath);

	int size = 5 * 1024 * 1024;

	String name = "";
	String subject = "";

	String fileName1 = "";
	String originName1 = "";

	String fileName2 = "";
	String originName2 = "";

	MultipartRequest mul = null;

	try {
		mul = new MultipartRequest(request, UploadPath, size, "utf-8", new DefaultFileRenamePolicy());

		name = mul.getParameter("name");
		subject = mul.getParameter("subject");

		Enumeration files = mul.getFileNames();

		String file1 = (String) files.nextElement();

		fileName1 = mul.getFilesystemName(file1);

		originName1 = mul.getOriginalFileName(file1);

		String file2 = (String) files.nextElement();

		fileName2 = mul.getFilesystemName(file2);

		originName2 = mul.getOriginalFileName(file2);

	} catch (Exception e) {
		out.print(e.getMessage());
	}
%>
<title>Insert title here</title>
</head>
<body>
<form action="FileChk.jsp" method="post" name="filechk">
<input type="hidden" value="<%=name %>" name="name">
<input type="hidden" value="<%=subject %>" name="subject">
<input type="hidden" value="<%=fileName1 %>" name="fileName1">
<input type="hidden" value="<%=fileName2 %>" name="fileName2">
<input type="hidden" value="<%=originName1 %>" name="originName1">
<input type="hidden" value="<%=originName2 %>" name="originName2">
</form>
<a href="#" onclick="javascript:filechk.submit()">업로드확인</a> 
</body>
</html>