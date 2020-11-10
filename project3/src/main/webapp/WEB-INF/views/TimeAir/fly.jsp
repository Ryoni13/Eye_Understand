<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	- 항공 시간표 검색 시스템 -
	<form action="getTimeSearch.do" method="post">
		<table border="1" width="300">
			<tr align="center">
				<td>출발</td>
				<td><select name="start">
						<option selected value="0">광주</option>
						<option value="1">서울</option>
						<option value="2">부산</option>
						<option value="3">제주</option>
				</select></td>
			</tr>
			<tr align="center">
				<td>도착</td>
				<td><select name="end">
						<option selected value="0">광주</option>
						<option value="1">서울</option>
						<option value="2">부산</option>
						<option value="3">제주</option>
				</select></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="조회하기"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>