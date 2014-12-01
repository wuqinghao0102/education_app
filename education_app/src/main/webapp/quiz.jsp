<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Output text using Javascript</title>
<style type="text/css">
iframe
{
border:1px solid #a1a1a1;
padding:3px 3px; 
border-radius:25px;
}
</style>
</head>
<body>
 
<p>Please write your own code, and make the output of your code same with the left part</p>
<iframe  src="quiztext.jsp?key=<%=request.getParameter("key") %>" name="aaa" width=300 height=600></iframe>
<iframe  src="input.html" width=300 height=600></iframe>
<iframe  src="display.html" name="display" width=300 height=600></iframe>
</body>
</html>