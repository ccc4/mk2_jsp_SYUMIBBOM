<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="okULogin" value="${requestScope.okULogin }"></c:set>
<c:choose>
	<c:when test="${okULogin == '1' }">
		<script type="text/javascript">
			alert("로그인에 성공했습니다.");
			location.href = "index.jsp";
		</script>
	</c:when>
	<c:when test="${okULogin == '0' }">
		<script type="text/javascript">
			alert("아이디 또는 비밀번호가 다릅니다.");
			/* history.back();
			location.reload();  */
			location.href = "uLogin.jsp";
		</script>
	</c:when>
	<c:when test="${okULogin == '-1' }">
		<script type="text/javascript">
			alert("아이디가 존재하지 않습니다.");
			/* history.back();
			location.reload();  */
			location.href = "uLogin.jsp";
		</script>
	</c:when>
</c:choose>

<%-- <%
	String okULogin = (String) request.getAttribute("okULogin");

	if (okULogin == "1") {
%>
		<script type="text/javascript">
			alert("로그인에 성공했습니다.");
			history.go(-2);
			location.reload(); 
		</script>
<%
	} else if (okULogin == "0") {
%>
		<script type="text/javascript">
			alert("아이디 또는 비밀번호가 다릅니다.");
			history.back();
			location.reload(); 
		</script>
<%
	} else if (okULogin == "-1") {
%>
		<script type="text/javascript">
			alert("아이디가 존재하지 않습니다.");
			history.back();
			location.reload(); 
		</script>
<%
	}
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CHO's SAMGUKJI</title>
<link rel="shortcut icon" href="images/titleicon.ico" type="x-icon">
</head>
<body>

</body>
</html>