<%-- //[START all]--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%-- //[START imports]--%>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%-- //[END imports]--%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Succeed</title>
<script language="JavaScript" type="text/JavaScript">
function toggle(targetid){
    if (document.getElementById){
        target=document.getElementById(targetid);
            if (target.style.display=="block"){
                target.style.display="none";
            } else {
                target.style.display="block";
            }
    }
}
</script>
</head>
<body>
<%
 String value="";
 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 Query alltaskdata = new Query("Exercise");
		 List<Entity> results = datastore.prepare(alltaskdata).asList(
				 FetchOptions.Builder.withLimit(100000));
		 for(Entity result: results){
			 if(result.getKey().getName().equals(request.getParameter("key"))) value=result.getProperty("value").toString();
		 }
		  while(value.equals(null)){
			 for(Entity result: results){
				 if(result.getKey().getName().equals(request.getParameter("key"))) value=result.getProperty("value").toString();
			 } 
		 }

%>
<p><%=value%></p>
<br>
<hr size="1" color="black" >
<p>Check the code：</p>
<input type="button" id="butn" value="Display/Hide" onclick="toggle('div1')" />
<div id="div1" style="display: none">
<textarea rows="10" cols="15"><%=value%></textarea>
</div>
</body>
</html>