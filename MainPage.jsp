<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
#parentDiv {
	width: 100%;
	border: 1px solid black;
	overflow: hidden; /* will contain if #first is longer than #second */
}

#tabsDiv {
	width: 8%;
	float: left; /* add this */
	border: 1px solid red;
}

#contentDiv {
	border: 1px solid green;
	overflow: hidden; /* if you don't want #second to wrap below #first */
	height: 100%;
}

#chickenStatersDiv {
	width: 8%;
	float: left; /* add this */
	border: 1px solid red;
}

#ohterStartesDiv {
	border: 1px solid green;
	overflow: hidden; /* if you don't want #second to wrap below #first */
	height: 100%;
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
<script type="text/javascript" charset="utf8"
	src="resources/js/jquery-ui.js">
</script>
<script type="text/javascript" src="resources/js/GetData.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="parentDiv">
		<div id="tabsDiv">
			<ul>
				<li><p id="staters" onclick="getStatersData();">test1</p></li>
				<li><p>test1</p></li>
				<li><p>test1</p></li>
				<li><p>test1</p></li>
			</ul>
		</div>
		<div id="contentDiv">${user}</div>
	</div>
	<div id="staters">
		<div id="chickenStatersDiv">
			<table id="chickenStatersTable">
				<tr>
					<td>Name</td>
					<td>Price</td>
					<td>Quantity</td>
				</tr>				
			</table>


		</div>
		<div id="ohterStartesDiv"></div>
	</div>
</body>
</html>
