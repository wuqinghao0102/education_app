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
border-radius:5px;
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
<p>JavaScript is the programming language of the Web.</p>
<p>All modern HTML pages are using JavaScript.</p>
<p>JavaScript is easy to learn.</p>
<hr>
<h2>Learn by Examples</h2>
<p>Examples are better than 1000 words. Examples are often easier to understand 
than text explanations.</p>
<p>This tutorial supplements all explanations with clarifying &quot;Try it Yourself&quot; 
examples.</p>
<p>
<table class="lamp"><tr>
<td>If you try all the examples, you will learn a lot about JavaScript, in a very short time!</td>
</tr></table>
<br>
<div>
<h3>Example</h3>
<p >This is my first JavaScript program</p>
<p id="demo"></p>
<button type="button" onclick="displayDate()" style="border:1px solid #FF9933 ; background-color:#00FF00">Display Date</button><br><br>
<a href="DisplayDate.html">Try it yourself</a><br>
</div>
<hr>
<h2>Why Study JavaScript?</h2>
<p>JavaScript is one of the <em>3 languages</em> all web developers <em>
must</em> 
learn:</p>
<p>&nbsp;&nbsp; 1. <em>HTML</em> to define the content of web pages</p>
<p>&nbsp;&nbsp; 2. <em>CSS</em> to specify the layout of web pages</p>
<p>&nbsp;&nbsp; 3. <em>JavaScript</em> to program the behavior of web pages </p>
<h1><a href="examples.html">Begin Learning</a></h1><br>



</body>
</html>