<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
     String color = "";
     Integer count = (Integer)session.getAttribute("count");
     if(session.getAttribute("count")==null){
         count = new Integer(1);
     }else{
          count = new Integer(count.intValue()+1);
     }
%>
<%
session.setAttribute("count",count);
InetAddress iadr = InetAddress.getLocalHost();

out.println("<H1>Node2</H1>");
out.println("<P>");
out.println("<b>Connect count</b> : "+count+"<BR>");
out.println("<b>HostName</b> : "+System.getenv("HOSTNAME")+"<BR>");
out.println("<b>Session ID</b> : "+session.getId() + "<BR>");
out.println("<b>Session Is New</b> : "+session.isNew() + "<BR>");
out.println("<b>Session CreationTime</b> : "+new Date(session.getCreationTime()) + "<BR>");
out.println("<b>Session LastAccessedTime</b> : "+new Date(session.getLastAccessedTime()) + "<BR>");
%>
</body>
</html>