
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
</style>
</head>
<body>
	<%
		session.invalidate();
	%>
	<h1>You are now logged out!!</h1>
	<a href="${pageContext.request.contextPath}/login">Go back</a>
</body>
</html>