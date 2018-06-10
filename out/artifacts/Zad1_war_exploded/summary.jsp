<%@ page import="rob.model.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Robert
  Date: 2018-06-06
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Product> products = (List<Product>) request.getAttribute("products");
%>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Summary</title>
</head>
<body>

<h1>Your cart:</h1>

<table class="table table-bordered" style="width: 600px">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Product</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (int i = 0; i< products.size(); i++){
    %>
    <tr>
        <td><%=i+1%></td> <td><%=products.get(i).getName()%></td> <td><%=products.get(i).getPrice()%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<h2>Total price: <%=request.getAttribute("totalPrice")%></h2>
<h2>Average price: <%=request.getAttribute("averagePrice")%></h2>
<a href="/index.jsp">Return</a>
</body>
</html>