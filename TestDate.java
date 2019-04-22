import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestDate {

	public static void main(String[] args) {
		
		
		String d1="2020-12-15";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		 try {
			Date d=sdf.parse(d1);
			System.out.println(d);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
	}

}
