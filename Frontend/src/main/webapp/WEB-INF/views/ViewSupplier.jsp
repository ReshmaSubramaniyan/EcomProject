<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <br><br> <br><br> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.Supplier {
  margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background: transparent;
  color: white;
  border-radius: 10px;
  border: 1px solid white;
}
.Supplier tr {
  border: 1px solid white;
}
.Supplier tr:nth-child(odd) {
  background-color: transparent;
}
.Supplier th {
  display: none;
  border: 1px solid black;
  background-color: white;
  color: black;
  padding: 3em;
}
.Supplier th:first-child {
  display: table-cell;
  text-align: center;
}
.Supplier th:nth-child(2) {
  display: table-cell;
}
.Supplier th:nth-child(2) span {
  display: none;
}
.Supplier th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .Supplier th:nth-child(2) span {
    display: block;
    
  }
  .Supplier th:nth-child(2):after {
    display: none;
  }
}
.Supplier td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.Supplier td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid white;
}
@media (min-width: 480px) {
  .Supplier td {
    border: 1px solid white;
  }
}
.Supplier th, .Supplier td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .Supplier th, .Supplier td {
    display: table-cell;
    padding: 1em;
  }
}
a{
color:white;
}
body {
  padding: 0 2em;
  background-image: url("resources/images/bg/bg14.jpg");
  background-size: cover;
  
}
h1 {
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}
</style>

</head>
<body>
<table class="Supplier">
	<thead>
		<tr>
		<th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">ContactNumber</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		</tr>
		<c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.contactNumber}</td>
			<td><a href="editSupplier?supplierId=${supplier.supplierId}"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
			<td><a href="deleteSupplier?supplierId=${supplier.supplierId}"onclick="return confirm('Are You Sure? Do you Want Delete this Supplier : ${supplier.supplierName} ?')"><span
									class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>