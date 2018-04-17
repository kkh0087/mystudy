<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일업로드폼</title>
</head>
<body>
<form id="Up" action="FileUpload.jsp" method="post" enctype="Multipart/form-data" >
<table border="1" align="center">
<tr><td align="center" colspan="2">파일 업로드 폼</td></tr>
<tr><td>올린사람</td><td><input type="text" name="name"></td></tr>
<tr><td>제목</td><td><input type="text" name="subject"></tr>
<tr><td>파일1</td><td><input type="file" name="file1"></tr>
<tr><td>파일2</td><td><input type="file" name="file2"></tr>
<tr><td colspan="2" align="center"><input type="submit" value="전송"></td></tr>
</table>

</form>
</body>
</html>