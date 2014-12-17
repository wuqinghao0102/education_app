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

public class ReadBlob extends HttpServlet{
	 protected void doGet(HttpServletRequest req, HttpServletResponse res)
	         throws ServletException, IOException {
		 String filename1=null;
		 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 Query alltaskdata = new Query("BlobStore");
		 List<Entity> results = datastore.prepare(alltaskdata).asList(
				 FetchOptions.Builder.withLimit(10000));
		 res.setContentType("text/plain");
		 for(Entity result: results){
			 if(result.getKey().getName().equals(req.getParameter("filename"))) filename1=result.getProperty("blobkey").toString();
		 }
		  while(filename1.equals(null)){
			 for(Entity result: results){
				 if(result.getKey().getName().equals(req.getParameter("filename"))) filename1=result.getProperty("blobkey").toString();
			 } 
		 }
		
		  res.sendRedirect("/blobstore?blob-key=" + filename1);
	 }
}
