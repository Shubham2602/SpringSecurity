<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Custom Login Page</title>

<style>
	.failed {
	color: red;
}
</style>
</head>

<body>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
				method="POST">
				
		<c:if test="${param.error != null}">
			<i class="failed">Kindly enter correct credentials!!!</i>	
		</c:if>
		
		<br><br>
		
		UserName : <input type="text "name="username" />
		<br>
		<br>
		
		Password : <input type="password "name="password" />
		<br>
		<br>
		
		<input type="submit" value="Login" />
		
		
	</form:form>
</body>
</html>