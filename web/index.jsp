

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is JSTL Example</h1>
        <!--1. out tag : -->
        
        <!--2. set tag-->
        
        <c:set var="i" value="230" scope="application"></c:set>
        <h1> <c:out value="${i}"></c:out> </h1>
        
        <!--3. remove tag-->
        <%--<c:remove var="i"></c:remove>--%>
        <h1><c:out value="${i}">This is default value</c:out></h1>
        <hr><hr> 
          <!--4. if : test krta hae condition : true => print ....--> 
        <c:if test="${i==23}">
            <h1>yes i is 23 and condition is true</h1> 
        </c:if>
            
            <!--5. choose , when , otherwise : java switch-->
            
        <c:choose>
            <c:when test="${i>0}">
                <h1>this is my case first</h1>
                <h2>Number is positive</h2>
            </c:when>
                
                <c:when test="${i<0}">
                    <h1>this is my second case</h1>
                    <h1>Number is negative number</h1>
                </c:when>
                    
                    <c:otherwise>
                        <h1>Default case .. otherwise</h1>
                        <h1>the number is zero...</h1>
                        
                    </c:otherwise>
        </c:choose>
         <!--For Each tag : for repeating and traversing-->
         
        <c:forEach var="j" begin="1" end="10" >
            <h1>Value of j is <c:out value="${j}"></c:out></h1>
        </c:forEach>
            
            <!--7. re direct-->
        <c:url var="myurl" value="https://www.google.com/search" >
            <c:param name="q" value="learn code with sachin servlet">
                
            </c:param> 
        </c:url>
            <h1><c:out value="${myurl}"></c:out></h1>
        <%--<c:redirect url=""></c:redirect>--%>
        
        <c:redirect url="${myurl}">
            
        </c:redirect>
    </body>
</html>
