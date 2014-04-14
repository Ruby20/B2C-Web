
package dates;

import java.text.DateFormat;
import java.util.*;

public class JspCalendar {
    Calendar  calendar = null;

    public JspCalendar() {
	calendar = Calendar.getInstance();
	Date trialTime = new Date();
	calendar.setTime(trialTime);
    }




public String getDate() {
	return getDayOfMonth() + "/" + getMonthInt() + "/" +  getYear();

    }

   public int getDayOfMonth() {
	return calendar.get(Calendar.DAY_OF_MONTH);
    }

    public int getMonthInt() {
	return 1 + calendar.get(Calendar.MONTH);
    }

     public int getYear() {
	return calendar.get(Calendar.YEAR);
    }



public String getTime() {
	return getHour() + ":" + getMinute() + ":" + getSecond();
    }

    public int getHour() {
	return calendar.get(Calendar.HOUR_OF_DAY);
    }
    
    public int getMinute() {
	return calendar.get(Calendar.MINUTE);
    }


    public int getSecond() {
	return calendar.get(Calendar.SECOND);
    }


    public String getDay() {
	int x = getDayOfWeek();
	String[] days = new String[] {"Sunday", "Monday", "Tuesday", "Wednesday", 
				      "Thursday", "Friday", "Saturday"};

	if (x > 7)
	    return "Unknown to Man";

	return days[x - 1];

    }
    
  public int getDayOfWeek() {
	return calendar.get(Calendar.DAY_OF_WEEK);
    }
    

    public static void main(String args[]) {
	JspCalendar db = new JspCalendar();
	
	p("time: " + db.getTime());
	p("date: " + db.getDate());
	p("Day: " + db.getDay());
	
    }

    private static void p(String x) {
	System.out.println(x);
    }

    
}

