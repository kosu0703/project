<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/d3367b6d2f.js"></script>
<link href="<c:url value="/resources/css/common.css"/>" rel='stylesheet' />
<script type="text/javascript">
	function write_go(f) {
		f.action = "#";
		f.submit();
	}
</script>
<style type="text/css">
table {
	width: 600px;
	border-collapse: collapse;
	text-align: center;
}

table, th {
	border: 1px solid black;
	padding: 5px;
}

td {
	border: 1px dotted gray;
	padding: 5px;
}

input {
	margin: 5px;
}

button {
	margin-left: 240px;
}

tr:hover {
	background-color: lightgray;
}
</style>
<title>메인</title>
</head>
<body>
	 <%@ include file="../common/header.jsp" %>
     
	<section>
		<div class="tbox">
			<h2>Q&A 게시판</h2>
			<form action="#">
				<table class="table">
					<thead>
						<tr>
							<th>NO</th>
							<th colspan="3">제목</th>
							<th>작성자</th>
							<th>상태</th>
							<th>등록 일시</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td colspan="3">~~~~~~~~subject~~~~~~~~</td>
							<td>admin</td>
							<td>status</td>
							<td>date</td>
						</tr>
						<tr>
							<td>2</td>
							<td colspan="3">~~~~~~~~subject2~~~~~~~~</td>
							<td>admin2</td>
							<td>status2</td>
							<td>date2</td>
						</tr>
						<%-- <tr>
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="7"><h4>텅</h4></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="k" items="${list}" varStatus="vs">
									<tr>
										<td>${vs.count}</td>
										<td><a href="#">${k.subject}</a></td>
										<td>${k.name}</td>
										<td>${k.status}</td>
										<td>${k.regdate}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tr> --%>
					</tbody>
				</table>
				<p>검색어 
					<input class="input" type="text" name="search"> 
					<input type="hidden" name="idx" ><!-- value="${idx}" --> 
					<input type="submit" value="검색">
					<input type="button" onclick="write_go(this.form)" value="글쓰기">
				</p>
			</form>
		</div>
		 <%@ include file="../common/footer.jsp" %>
	</section>
</body>
</html>