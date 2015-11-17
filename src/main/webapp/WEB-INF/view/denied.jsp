<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
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

	<h1 id="banner">Unauthorized Access !!</h1>

	<hr />

	<c:if test="${not empty error}">
		<div style="color: red">
			Your fake login attempt was bursted, dare again !!<br /> Caused :
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>

	<p class="message">Access denied!</p>
	<a href="/Spring3HibernateIntegration/login">Go back to login page</a>
</body>
</html>