<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:fourthingsplus>
    <jsp:attribute name="header">
         Welcome to the frontpage
    </jsp:attribute>

    <jsp:body>

        <form action="login" method="post">
            <label for="username">Username: </label>
            <input type="text" id="username" name="username"/>
            <br><br>
            <label for="password">Password: </label>
            <input type="password" id="password" name="password"/>
            <br><br>
            <input type="submit"  value="Log in"/>
        </form>

    </jsp:body>

</t:fourthingsplus>