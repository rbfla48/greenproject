<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				<form role="form" method="post">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="news_no">글 번호</label><input type="text" id="news_no" name="news_no" value="${newsRead.news_no}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="news_title">제목</label><input type="text" id="news_title" name="news_title" value="${newsRead.news_title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="news_text">내용</label><textarea id="news_text" name="news_text"><c:out value="${newsRead.news_text}" /></textarea>
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="regdate">작성날짜</label>
									<fmt:formatDate value="${newsRead.regdate}" pattern="yyyy-MM-dd"/>					
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