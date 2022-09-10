<%@page import="java.util.Iterator"%>
<%@page import="com.surabi.bean.Menu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu for Admin</title>
<style type="text/css">
 body{
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPtEeqz8v5tvyZyejhnmp2TBxuIL1DkgwQUw&usqp=CAU");
            background-repeat:space;
            font-family: "Arial";
            height: auto;
          
   		
        }

 .btn {
    white-space: normal !important;
     border-radius: 10px;
    background-color:lime;
    padding :10px;
}  
 .btn1 {
    white-space: normal !important;
     border-radius: 10px;
    background-color:rgb(69, 128, 238);
    padding :10px;
}    
        
</style>

<style>
table, th, td {
	border: 1px solid blue;
	padding: 5px;
	align-items: center;
	font-family: "Arial";
	background-color: white;
}
</style>
</head>
<body>
	<div align="right">
		<a href="/admin/adminLogout"><button class="btn">LOG OUT</button></a>
	</div>
	<div align="center">

		<hr size="5px" color="black">
		<h1>SURABI RESTAURANT</h1>
		<hr size="5px" color="black">
		<a href="/admin/adminHome"><button class="btn1">Home</button></a> <a
			href="/menu/addNewMenuPage"><button class="btn1">Add New Menu</button></a> <a
			href="/menu/updateItemNamePage"><button class="btn1">Update Item Name</button></a>
		<a href="/menu/updateItemPricePage"><button class="btn1">Update Item
				Price</button></a> <a href="/menu/deleteItemPage"><button class="btn1">Delete
				Item</button></a>
	
	<H2>Today's Menu</H2>
	<%Object menu = request.getAttribute("objMenu");
List<Menu> listOfMenu = (List<Menu>)menu;

if(listOfMenu.isEmpty()){
	out.print("<h3>No Menu to display</h3>");
}else{
	Iterator<Menu> ii = listOfMenu.iterator();
%>
	<table>
		<tr>
			<th>Item ID</th>
			<th>Item Name</th>
			<th>Itme Price Per Plate</th>

		</tr>

		<%
	 		while (ii.hasNext()){
	 			Menu item = ii.next();
	 			
%>
		<tr>
			<td><%=item.getItemId() %></td>
			<td><%=item.getItemName() %></td>
			<td><%= item.getItemPrice()%></td>

		</tr>

		<%
	 		}
	 
%>

	</table>

	<%
	
}
%>
</div>
</body>
</html>