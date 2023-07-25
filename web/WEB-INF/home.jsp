<%@ page import="java.util.List" %>
<%@ page import="models.Item" %><%--
  Created by IntelliJ IDEA.
  User: user_folder
  Date: 7/25/2023
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Hello</h1>
<table class="table table-stripped">
    <thead>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
    <th>Price</th>
    </thead>
    <tbody>
    <%
    List <Item> items = (List<Item>) request.getAttribute("items");
        for (Item item : items) {
    %>
    <tr>
        <td><%=item.getId()%></td>
        <td><%=item.getName()%></td>
        <td><%=item.getDescription()%></td>
        <td><%=item.getPrice()%></td>
    </tr>
    <%
        }
    %>

    </tbody>
</table>
</body>
</html>
