<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
	<head>
	 	<title>게시판</title>
	</head>
	<body>
	
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form role="form" method="post" action="${contextPath}/news/newsWrite">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="news_no">제목</label><input type="text" id="news_no" name="news_no" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="news_title">내용</label><textarea id="news_title" name="news_title" ></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="news_text">작성자</label><input type="text" id="news_text" name="news_text" />
								</td>
							<tr>
								<td>						
									<button type="submit">작성</button>
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>