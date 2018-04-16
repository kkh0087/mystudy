<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>add</title>
</head>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var radioIndex = 1;
	var trIdex = 1;

	function add() {
		var num = $('#num').val();
		var name = $('#name').val();
		var radioY = '<input type = radio name =ra_' + radioIndex
				+ ' value = yes onclick = see(this) checked="checked" >사용</input>'
		var radioN = '<input type = radio name =ra_' + radioIndex
				+ ' value = no onclick = see(this) >미사용</input>'
		var html = '<tr name=trs'+trIdex+'>' + '<td>' + num + '</td>' + '<td>'
				+ name + '</td></tr>';
		var html2 = '<tr><td>' + num + '</td>' + '<td>' + name + '</td><td>'
				+ radioY + radioN + '</td>';

		$('#ta1 > tbody:last').append(html);
		$('#ta2 > tbody:last').append(html2);

		trIdex++;
		radioIndex++;
	}

	function see(obj) {
		var val = $(obj).prop('value');
		var butName = $(obj).prop('name');
		var names = butName.split('_');
		var butNum = parseInt(names[1])-1;
		
		if(val=='yes'){
			$('#body').children().eq(butNum).css("display", "");
		}else{
			$('#body').children().eq(butNum).css("display", "none");
		}
		
		
	}
</script>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td><input type="text" id="num"></input></td>
			<td>이름</td>
			<td><input type="text" id="name"></input></td>
			<td><input type="button" value="추가" onclick="add()"></input></td>
		</tr>
	</table>
	<br>

	<table border="1" id="ta1">
		<th>번호</th>
		<th>이름</th>
		<tbody id="body"></tbody>
	</table>
	<br>

	<table border="1" id="ta2">
		<th>번호</th>
		<th>이름</th>
		<th>사용여부</th>
		<tbody></tbody>
	</table>


</body>
</html>