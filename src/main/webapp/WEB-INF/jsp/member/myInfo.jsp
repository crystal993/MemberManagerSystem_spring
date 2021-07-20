<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/taglibMenu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보 조회</title>
<link type="text/css" rel="stylesheet" href="/resource/css/common.css">
</head>
<body>
<jsp:include page="../inc/logoMenu.jsp" />
<jsp:include page="../inc/mainMenu.jsp" />

<h3>내정보조회</h3>
<form action="/member/memberUpdate" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td>${memberId}</td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="memberPw" value="${dto.memberPw}" ></td>
		</tr>
		
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value="${dto.name}" ></td>
		</tr>
		
		<tr>
			<th>휴대폰</th>
			<td><input type="text" name="mobile" value="${dto.mobile}" ></td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td><input type="text" name="email" value="${dto.email}" ></td>
		</tr>
		
		<tr>
			<th>가입일</th>
			<td>${entryDate}</td>
		</tr>
		
		<tr>
			<td>등급</td>
			<td>${grade}
			<c:choose>
					<c:when test="${dto.grade == 'G'}">[일반회원]</c:when>
					<c:when test="${dto.grade == 'S'}">[우수회원]</c:when>
					<c:when test="${dto.grade == 'A'}">[관리자]</c:when>
				</c:choose>
			</td>
		</tr>
		<tr>								
			<th>마일리지</th>
			<td><fmt:formatNumber type="currency" value="${dto.mileage}" /></td>
		</tr>
		<tr>
			<th>담당자</th>
			<td>
				<c:choose>
					<c:when test="${not empty dto.manager}">${dto.manager}</c:when>
					<c:otherwise>미배정</c:otherwise>
				</c:choose>
			</td>
		</tr>
		
		<tr  class="btn">
			<td colspan="2"> 
				<input type="submit" value="회원정보변경">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
<jsp:include page="../inc/footerMenu.jsp" />
</body>
</html>