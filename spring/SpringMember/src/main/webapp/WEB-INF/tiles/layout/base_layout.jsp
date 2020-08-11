<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<title>base layout</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

<style>
#top_wrapper {
	width:100%;
	height:100px;
}

#content_wrapper {
    width:100%;
    height:calc(100vh - 110px); /* 가용공간 확보 */
    display:flex;
    align-items:center;
    justify-content:center;    
    overflow-y:auto;
}

#footer_wrapper
{
	width:100vw;
	background:gray; 
	height:50px; 
	display:flex;
	align-items:center;
	justify-content:center;
}
</style>
</head>

<body class="wrapper">

	<!-- header -->
	<div id="top_wrapper">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<tiles:insertAttribute name="header" />
		</nav>
	</div>

	<!-- body -->
	<div id="content_wrapper">
		<tiles:insertAttribute name="body" />
	</div>

	<!-- footer -->
	<div id="footer_wrapper">
		<tiles:insertAttribute name="footer" />
	</div>
	
</body>
</html>