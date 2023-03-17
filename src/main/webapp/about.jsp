<%--
  Created by IntelliJ IDEA.
  User: kotteletfisk
  Date: 16/03/2023
  Time: 13.57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:fourthingsplus>

     <jsp:attribute name="header">
         About
    </jsp:attribute>

    <jsp:body>

        <h1>About</h1>

        <p>Here is some information about this organization and the application bla bla</p>

    </jsp:body>
</t:fourthingsplus>