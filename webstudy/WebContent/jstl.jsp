<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Table inclide</title>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script type="text/javascript" defer="defer">
<!--
	function fn_check_act(obj) {
		var item; /* 아이템이라는 변수 선언 */
		var idx; /* 인덱스 변수 */
		
		$('input[name=chk]').each(function(index) { /* 이름이 chk 인 제이쿼리 객체들을 가져온다. */
			if($(this).val() == $(obj).val()) { /* 이 펑션의 인덱스 값과 처음 들어온 매개변수 obj의 value가 같은면  */
				idx = index; /* idx를 인덱스로 초기화 */
				item = $(this); /* item을 지금의 제이쿼리 객체로 초기화 한다. */
				return;
			}
		});
		
		if(idx % 5 == 0) fn_1st_act($(item), idx); /* idx를 5로 나눈 나머지 0이면 fn_1st_act를 실행시킨다. */ 
		else {
			$(obj).removeAttr('checked');
			console.log('2st');
		}
	}
	//
	function fn_1st_act(obj, idx) {
		if($(obj).prop('checked')) {
			$('input[name=chk]').each(function(index) {
				if(idx < index && index <= (idx+4)) {$(this).attr('checked','checked');}
			});
		}
	}
-->
</script>
</head>
<body>
<table border="1" align="center">
	<caption>test table list</caption> <!-- 테이블제목 태그 -->
	<colgroup> <!-- 뒤에 나오는 컬럼(td 태그)에 적용할 스타일을 해당 태그에서 미리 적용할 수 있게합니다. 특히 각 컬럼의 길이를 설정하는데 가장 많이 쓰임-->
		<col width="40%"/><!-- 넓이 조정 -->
		<col width="40%"/><!-- 넓이 조정 -->
		<col width="20%"/><!-- 넓이 조정 -->
	</colgroup>
	<thead>
		<tr align="center">
			<td>1st</td>
			<td>2st</td>
			<td>CheckBox</td>
		</tr>
	</thead>	
	<tbody>
		<c:forEach begin="0" end="14" var="item" varStatus="status">
		<tr align="center">
			<td><c:out value="${(status.index % 5 == 0)?status.count:''}"/></td>
			<td><c:out value="${(status.index % 5 == 0)?'':status.count}"/></td>
			<td><input type="checkbox" id="ck_${status.count}" name="chk" value="${status.index}" onClick="fn_check_act(this);" style="cursor: pointer;"/></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>