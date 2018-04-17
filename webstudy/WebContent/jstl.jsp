<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Table inclide</title>
</head>
<body>
<% 
	List<Map> list = new ArrayList<Map>();
	Map map = new HashMap<String,String>(); 	
	map.put("a","a");
	list.add(map);
	map = new HashMap<String,String>(); 
	map.put("a","b");
	list.add(map);

	map = new HashMap<String,String>(); 
	map.put("a","c");
	list.add(map);
	
%>

<c:forEach items="<%=list%>" var="v">
${v.a}

<br>

</c:forEach>
</body>
</html>