<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to use Online JAVA learning platform</title>
<style> 
body
{
background-color:#F0F0F0;
padding:5px 5px;
}
div
{
border:2px solid #a1a1a1;
padding:5px 5px; 
background:#E0E0E0;
width:400px;
border-radius:25px;
}
</style>
<script>
function displayDate()
{
document.getElementById("demo").innerHTML=Date();
}
</script>
</head>
<body>
<h1>Learn Javascript the hard way</h1>
<pre>
JavaScript is the programming language of the Web.

All modern HTML pages are using JavaScript.

JavaScript is easy to learn.

This tutorial will teach you JavaScript from basic to advanced.
</pre>
<div>
<h3>Example</h3>
<p >This is my first JavaScript program</p>
<p id="demo"></p>
<button type="button" onclick="displayDate()" style="border:1px solid #FF9933 ; background-color:#00FF00">Display Date</button><br><br>
<a href="quiz.html">Try it yourself</a><br>
</div>
<a href="source.html">Related Source</a>
</body>
</html>