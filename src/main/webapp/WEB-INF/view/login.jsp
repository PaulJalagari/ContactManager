<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<style type="text/css">
body {
	text-align: center;
	font-family: Verdana !important;
	background: #F1F2B5 /* fallback for old browsers */ 
 background: -webkit-linear-gradient(to left, #F1F2B5, #135058);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to left, #F1F2B5, #135058);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

#page-wrap {
	text-align: left;
	width: 500px;
	margin: 0 auto;
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
.btn:hover,
.btn:focus,
.btn:active {
  background: #fff;
  color: #000;
  transition: all 0.5s ease-in;
}
</style>

</head>
<body>
	<div id="page-wrap">
		<h1 id="banner">Contact Manager</h1>
		<form name="f" action="<c:url value='j_spring_security_check'/>"
			method="POST">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type='text' name='j_username' /><br></td>
				</tr>
				<tr>
				
					<td>Password:</td>
					<td><input type='password' name='j_password'></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit" class="btn">&nbsp;<input
						name="reset" type="reset" class="btn"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>