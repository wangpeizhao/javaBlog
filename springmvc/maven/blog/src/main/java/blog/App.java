package blog;

import java.text.ParseException;

import com.blog.utils.Log;
import com.blog.utils.TimeFormat;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) throws ParseException {
		System.out.println("Hello World!");
		System.out.println(TimeFormat.getCurrentTime());
		
		App app = new App();
		app.aa();
	}
	
	public void aa(){
		 System.out.println("This is println message.");  
		 Log log = new Log(App.class);
       // 记录debug级别的信息  
//		 Log.debug("This is debug message.");
       // 记录info级别的信息  
		 log.info("This is info message.");  
       // 记录error级别的信息  
		 log.error("This is error message.");  
		 log.fatal("This is fatal message.");  
		 log.trace("This is trace message.");   
	}
}
