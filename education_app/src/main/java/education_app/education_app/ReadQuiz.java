package education_app.education_app;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Query;

public class ReadQuiz extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
		 String value="";
		 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 Query alltaskdata = new Query("Exercise");
		 List<Entity> results = datastore.prepare(alltaskdata).asList(
				 FetchOptions.Builder.withLimit(10000));
		 response.setContentType("text/plain");
		 for(Entity result: results){
			 if(result.getKey().getName().equals(request.getParameter("key"))) value=result.getProperty("value").toString();
		 }
		  while(value.equals(null)){
			 for(Entity result: results){
				 if(result.getKey().getName().equals(request.getParameter("key"))) value=result.getProperty("value").toString();
			 } 
		 }
		  //response.getWriter().println(request.getParameter("key")+"  "+value);
		  response.sendRedirect("/quiztext.jsp?value="+value);
	 }

}
