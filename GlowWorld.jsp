
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#feilds {
	padding-left: 30%;
	align-content: center;
	height: 95%;
}

.text {
	width: 50%;
	margin-bottom: 5px;
}

#btn_submit, #btn_google, #btn_facebook {
	width: 35%;
	left: 5%;
	position: relative;
	top: 5%
}

#Signup {
	display: block;
	margin-left: 35%;
	font-family: consolas;
	font-size: 1.5rem;
}

.span {
	font-size: 0.70rem;
	font-weight: bold;
	color: red;
	background-color: antiquewhite;
	align-content: center;
	height: 95%;
}

#regdiv {
	position: absolute;
	left: 25%;
	top: 10%;
	border: 5px solid grey;
	width: 55%;
}
#userRegistrationID{
background-color: antiquewhite;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="resources/js/HomePageValidate.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mystyle.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/mystyle-styles.css" />
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/redirect.js"></script>
<script type="text/javascript" charset="utf8" src="resources/js/jquery-ui.js"></script>
<title>Hello World</title>
</head>
<body>
		<div id="regdiv">
			<div style="height: 70px;background-color: darkturquoise;border: 3px;width:100%">
				<form id="SignInForm"style="position: relative;left: 35%;top: 25%;" accept-charset=utf-8 >
					<span style="font-size: 1rem;">SignIn</span>	
					<input type="text" id="emailID" name="emailID" placeholder="EmailID"  required="required" />
					<input type="password" id="password" name="password" placeholder="password" required="required" value="Prakash123$"/>
					<input type="button" value="login" onclick="signIn();"><br>
					<span id="msgID" style="margin: 5px; position: absolute; left: 15%;"><c:out value="${message}"/></span>
				</form>
				</div>
				<form id ="mainPageForm"action="loadMainPage" method="POST">
				</form>
			<form:form id="userRegistrationID" >
				<span id="Signup">SignUp</span>
				<div id="feilds">
					<br> 
					<input type="text" id="FName" name="FName" placeholder="First Name" class="text" required="required" /> 
					<span id="FNameSpan" class="span"></span> 
					<input type="text" name="LName" id="LName" placeholder="Last Name"class="text" required="required" /> 
					<span id="LNameSpan"></span> 
					<input type="text"	id="EmailID" name="EmailID" placeholder="E-mail ID" class="text" required="required" onfocusout/>
					<span id="EmailIDSpan"></span>
					<input type="text" id="MobileNumber" name="MobileNumber"	placeholder="Mobile Number" class="text" required="required"/>
					<span	id="MobileNumberSpan"></span> 
					<input type="password" id="Password" name="Password" placeholder="Password" class="text" required="required" value="Prakash123$" />
					<span id="PasswordSpan"></span>
					<input type="password" id="RePassword" name="RePassword" placeholder="Retype-Password" class="text" required="required" value="Prakash123$" /><br>
					<span id="RePasswordSpan"></span>
					<input type="radio" name="gender" value="male" id="male" />	Male 
					<input type="radio" name="gender" value="female" id="female" /> Female<br> 
					<textarea rows="3" cols="25" id="Address" name="Address" placeholder="Address" class="text" required></textarea><br> 
					<input type="button" onclick="validate('userRegistration','POST','userRegistrationID');"value="Submit" id="btn_submit"><br> <br>
					<input type="button" value="Signup with Google" id="btn_google" style="pointer-events: none; opacity: 0.5;" /> <br> <br>
					<input type="button" value="Signup with Facebook" id="btn_facebook"style="pointer-events: none; opacity: 0.5;" />
				 </div>
			</form:form>
			<!-- <input type="hidden" id="hiddenPageName"></input>
	<input type="hidden" id="hiddenFormId"></input>
	<input type="hidden" id="hiddenMethodName"></input> -->
		</div>

	
</body>
</html>
