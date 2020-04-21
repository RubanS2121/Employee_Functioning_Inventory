<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
		String time1 = "19:00:00";
		String time2 = "21:01:00";
 
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
		Date date1 = format.parse(time1);
		Date date2 = format.parse(time2);
		long difference = date2.getTime() - date1.getTime();
		long sec=difference/1000;
		//out.println(difference/1000);
		
		long seconds = sec;
        long p1 = seconds % 60;
        long p2 = seconds / 60;
        long p3 = p2 % 60;
        p2 = p2 / 60;
        out.print( p2 + ":" + p3 + ":" + p1);
		//out.print("\n");

%>