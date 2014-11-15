package education_app.education_app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

public class Worker extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
		 	String key = request.getParameter("key");
		 	String value = request.getParameter("value");
	     // Do something with key. 
	       Entity taskdata = new Entity("Exercise", key);
	       taskdata.setProperty("value", value);
	       DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
	       datastore.put(taskdata);
	 }
}
