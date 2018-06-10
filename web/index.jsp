<%--
  Created by IntelliJ IDEA.
  User: Robert
  Date: 2018-06-06
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Shop</title>
  </head>
  <body>
  <h1>Shop</h1>
  <h2>Products:</h2>
  <form method="post" action="summary">
    <input type="text" name="product1" placeholder="Product 1" ><input type="number" name="price1" placeholder="Price" ><br>
    <input type="text" name="product2" placeholder="Product 2"><input type="number" name="price2" placeholder="Price"><br>
    <input type="text" name="product3" placeholder="Product 3"><input type="number" name="price3" placeholder="Price"><br>
    <input type="text" name="product4" placeholder="Product 4"><input type="number" name="price4" placeholder="Price"><br>
    <input type="submit" value="Buy">
  </form>
  </body>
</html>
