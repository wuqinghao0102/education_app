<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bolbstore</title>
</head>
<body>
<form action="<%= blobstoreService.createUploadUrl("/blobstore") %>" method="post" enctype="multipart/form-data">
			<input type="text" name="filename">
            <input type="file" name="myFile">
            <input type="submit" value="Submit">
        </form>
</body>
</html>