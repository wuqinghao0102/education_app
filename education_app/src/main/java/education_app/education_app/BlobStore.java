package education_app.education_app;

import static com.google.appengine.api.taskqueue.TaskOptions.Builder.withUrl;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.taskqueue.Queue;
import com.google.appengine.api.taskqueue.QueueFactory;

public class BlobStore extends HttpServlet{
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
	
	 @Override
	    public void doPost(HttpServletRequest req, HttpServletResponse res)
	        throws ServletException, IOException {
		    Queue queue = QueueFactory.getDefaultQueue();
	        Map<String, BlobKey> blobs = blobstoreService.getUploadedBlobs(req);
	        BlobKey blobKey = blobs.get("myFile");
	        if (blobKey == null) {
	            res.sendRedirect("/");
	        } else {
	        	queue.add(withUrl("/worker1").param("filename", req.getParameter("filename")).param("blobkey",blobKey.getKeyString()));
	            //res.sendRedirect("/serve?blob-key=" + blobKey.getKeyString());
	        	//res.getWriter().println(blobKey.getKeyString());
	        }
	        }
	 
	 public void doGet(HttpServletRequest req, HttpServletResponse res)
		        throws IOException {   
		 String filename="";
		 DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 Query alltaskdata = new Query("BlobStore");
		 List<Entity> results = datastore.prepare(alltaskdata).asList(
				 FetchOptions.Builder.withLimit(10000));
		 res.setContentType("text/plain");
		 for(Entity result: results){
			 if(result.getKey().getName().equals(req.getParameter("filename"))) filename=result.getProperty("blobkey").toString();
		 }
		  while(filename.equals(null)){
			 for(Entity result: results){
				 if(result.getKey().getName().equals(req.getParameter("filename"))) filename=result.getProperty("blobkey").toString();
			 } 
		 }
		            BlobKey blobKey1 = new BlobKey(filename);
		            blobstoreService.serve(blobKey1, res);
		        }
}
