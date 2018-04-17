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
		var item; /* �������̶�� ���� ���� */
		var idx; /* �ε��� ���� */
		
		$('input[name=chk]').each(function(index) { /* �̸��� chk �� �������� ��ü���� �����´�. */
			if($(this).val() == $(obj).val()) { /* �� ����� �ε��� ���� ó�� ���� �Ű����� obj�� value�� ������  */
				idx = index; /* idx�� �ε����� �ʱ�ȭ */
				item = $(this); /* item�� ������ �������� ��ü�� �ʱ�ȭ �Ѵ�. */
				return;
			}
		});
		
		if(idx % 5 == 0) fn_1st_act($(item), idx); /* idx�� 5�� ���� ������ 0�̸� fn_1st_act�� �����Ų��. */ 
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
	<caption>test table list</caption> <!-- ���̺����� �±� -->
	<colgroup> <!-- �ڿ� ������ �÷�(td �±�)�� ������ ��Ÿ���� �ش� �±׿��� �̸� ������ �� �ְ��մϴ�. Ư�� �� �÷��� ���̸� �����ϴµ� ���� ���� ����-->
		<col width="40%"/><!-- ���� ���� -->
		<col width="40%"/><!-- ���� ���� -->
		<col width="20%"/><!-- ���� ���� -->
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