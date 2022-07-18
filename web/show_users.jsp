
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>All users are:</h1>
        <!--<div class="container"><table>-->
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/youtube" user="root" password="" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select * from user;</sql:query>
        <!--<table class="table">-->
            <tr>
                <td>User ID</td><br>           
            <td>User Name</td><br>       
            <td>User Email</td><br>      
            </tr>
            
        <c:forEach items="${rs.rows}" var="row">
            <tr>
                <td>
                    <c:out value="${row.id}"></c:out>     
                </td> <br>     
                <td><c:out value="${row.name}"></c:out></td> <br>   
            <td><c:out value="${row.email}"></c:out></td> <br>  
            </tr>
        </c:forEach>
            <!--</table>--> 
        <!--</div>--> 
<!--</table>--> 
     
    </body>
</html>
