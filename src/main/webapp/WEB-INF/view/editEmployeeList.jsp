<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
body {
	font-family: Verdana !important;
	background: #F1F2B5 /* fallback for old browsers */ 
 background: -webkit-linear-gradient(to left, #F1F2B5, #135058);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to left, #F1F2B5, #135058);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

a:link, a:visited {
	display: block;
	font-weight: bold;
	color: #ffffff;
	background-color: #008080;
	width: 120px;
	text-align: center;
	padding: 4px;
	text-decoration: none;
}

a:hover, a:active {
	background-color: #7A991A;
}

.btn {
	display: block;
	box-sizing: border-box;
	margin: 0 auto;
	padding: 8px;
	width: 80%;
	max-width: 200px;
	background: #fff; /* fallback color for old browsers */
	background: rgba(255, 255, 255, 0.5);
	border-radius: 8px;
	color: #fff;
	text-align: center;
	text-decoration: none;
	letter-spacing: 1px;
	transition: all 0.3s ease-out;
}

.btn:hover, .btn:focus, .btn:active {
	background: #fff;
	color: #000;
	transition: all 0.5s ease-in;
}
</style>
</head>
<body>
	<div>
		<h2>Contact Management</h2>
		<div align="right">
			<h3>
				<a href="<c:url value='j_spring_security_logout'/>"> Logout</a>
			</h3>
		</div>
		<form:form method="post" action="add" commandName="employee">

			<table style="width: 300px; height: 100px;">
				<tr>
					<td><form:label path="firstname">
							<spring:message code="label.firstname" />
						</form:label></td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td><form:label path="lastname">
							<spring:message code="label.lastname" />
						</form:label></td>
					<td><form:input path="lastname" /></td>
				</tr>
				<tr>
					<td><form:label path="email">
							<spring:message code="label.email" />
						</form:label></td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td><form:label path="telephone">
							<spring:message code="label.telephone" />
						</form:label></td>
					<td><form:input path="telephone" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn"
						value="<spring:message code="label.add"/>" /></td>
				</tr>
			</table>
		</form:form>


		<h3>Employees</h3>
		<c:if test="${!empty employeeList}">
			<table class="data" style="width: 400px; height: auto;">
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Telephone</th>
					<th>&nbsp;</th>
				</tr>
				<c:forEach items="${employeeList}" var="emp">
					<tr>
						<td>${emp.lastname},${emp.firstname}</td>
						<td>${emp.email}</td>
						<td>${emp.telephone}</td>
						<td><a href="delete/${emp.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>