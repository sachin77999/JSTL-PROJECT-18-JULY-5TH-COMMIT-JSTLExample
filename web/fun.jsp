
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Fun Page:</h1>
        
        <p>this page is all about using function text</p>
        <c:set var="name" value="sachinsoft india"></c:set>
        
            <h1><c:out value="${name}"></c:out></h1>
        
            <h1>Length of name is <c:out value="${fn:length(name)}"></c:out></h1>
        <c:out value="${fn:toLowerCase(name)}"></c:out>
        <br>
        <c:out value="${fn:contains(name,'INDIA')}"></c:out>
    </body>
</html>
