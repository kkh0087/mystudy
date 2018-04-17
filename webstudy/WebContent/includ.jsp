<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function momcheck() {
	if($('#mom_1').is(':checked')){
		$("input:checkbox[id='child_1']").prop("checked", true);
		$("input:checkbox[id='child_2']").prop("checked", true);
	}else{
		$("input:checkbox[id='child_1']").prop("checked", false);
		$("input:checkbox[id='child_2']").prop("checked", false);
	}
	
	if($('#mom_2').is(':checked')){
		$("input:checkbox[id='child_3']").prop("checked", true);
		$("input:checkbox[id='child_4']").prop("checked", true);
	}else{
		$("input:checkbox[id='child_3']").prop("checked", false);
		$("input:checkbox[id='child_4']").prop("checked", false);
	}
	
	if($('#mom_3').is(':checked')){
		$("input:checkbox[id='child_5']").prop("checked", true);
		$("input:checkbox[id='child_6']").prop("checked", true);
	}else{
		$("input:checkbox[id='child_5']").prop("checked", false);
		$("input:checkbox[id='child_6']").prop("checked", false);
	}
	
	
}

function childchk(){
	if($('#child_1').is(':checked') || $('#child_2').is(':checked') ){
		$("input:checkbox[id='mom_1']").prop("checked", true);
	}else{
		$("input:checkbox[id='mom_1']").prop("checked", false);
	}
	
	if($('#child_3').is(':checked') || $('#child_4').is(':checked') ){
		$("input:checkbox[id='mom_2']").prop("checked", true);
	}else{
		$("input:checkbox[id='mom_2']").prop("checked", false);
	}
	
	if($('#child_5').is(':checked') || $('#child_6').is(':checked') ){
		$("input:checkbox[id='mom_3']").prop("checked", true);
	}else{
		$("input:checkbox[id='mom_3']").prop("checked", false);
	}
}

</script>
<body>
	<%
		List list = new ArrayList<String>();
		list.add("첫번째 엄마");
		list.add("");
		list.add("<input type=checkbox id=mom_1 onchange= momcheck()>");
		list.add("");
		list.add("1번째 1자식");
		list.add("<input type=checkbox id=child_1 onchange=childchk()>");
		list.add("");
		list.add("1번째 2자식");
		list.add("<input type=checkbox id=child_2 onchange=childchk()>");

		list.add("두번째 엄마");
		list.add("");
		list.add("<input type=checkbox id=mom_2 onchange= momcheck()>");
		list.add("");
		list.add("2번째 1자식");
		list.add("<input type=checkbox id=child_3 onchange=childchk()>");
		list.add("");
		list.add("2번째 2자식");
		list.add("<input type=checkbox id=child_4 onchange=childchk()>");

		list.add("세번째 엄마");
		list.add("");
		list.add("<input type=checkbox id=mom_3 onchange= momcheck()>");
		list.add("");
		list.add("3번째 1자식");
		list.add("<input type=checkbox id=child_5 onchange=childchk()>");
		list.add("");
		list.add("3번째 2자식");
		list.add("<input type=checkbox id=child_6 onchange=childchk()>");
	%>

	<c:set var="i" value="0" />
	<c:set var="j" value="3" />
	<table border="1">
		<th>대분류</th>
		<th>중분류</th>
		<th>체크박스</th>

		<c:forEach items="<%=list%>" var="v">
			<c:if test="${i%j==0 }">
				<tr>
			</c:if>
			<td width="200" align="center">${v }</td>
			<c:if test="${i%j==j-1 }">
				</tr>
			</c:if>
			<c:set var="i" value="${i+1 }" />
		</c:forEach>
	</table>
</body>
</html>