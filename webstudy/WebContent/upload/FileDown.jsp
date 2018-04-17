
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>filedown</title>
</head>
<body>
<h3>파일다운로드</h3>
<% 

String filename = request.getParameter("file_name"); 

String savepath="upload";

ServletContext context = getServletContext();

String  sDownpath = context.getRealPath(savepath);

String sFilePath = sDownpath+"\\"+filename;

File oFile = new File(sFilePath);

byte [] b = new byte[5*1024*1024];

FileInputStream in = new FileInputStream(oFile);

String sMimeType = getServletContext().getMimeType(sFilePath);

if(sMimeType==null){
	sMimeType = "application.octec-strem";
}

response.setContentType(sMimeType);

String A = new String(filename.getBytes("euc-kr"),"8859_1");
String B = "utf-8";

String sEncorder = URLEncoder.encode(A, B);

String AA = "Content-Disposition";
String BB = "attachment; filename="+sEncorder;
response.setHeader(AA, BB);

ServletOutputStream so = response.getOutputStream();

int numRead = 0;

while((numRead = in.read(b,0,b.length))!=-1){
	so.write(b,0,numRead);
}

so.flush();
so.close();
in.close();

%>
</body>
</html>