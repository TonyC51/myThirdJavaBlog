<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.myThirdJavaBlog.posts.Post" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Here are my posts</p>
<ul>
	<% for (Post post : (List<Post>)request.getAttribute("posts")) { %>
		<li><a href="?id=<%= post.getId() %>"><%= post.getTitle() %></a></li>
	<% } %>
</ul>
</body>
</html>