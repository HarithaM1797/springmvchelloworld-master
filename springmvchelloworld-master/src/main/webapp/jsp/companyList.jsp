<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,com.example.stockspring.model.Company"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List companyList = (List) request.getAttribute("companyList");
		System.out.println(companyList);
	%>


	<table>
		<tr>
			<td>Company Code</td>

			<td>Board of Directory</td>
			<td>Comapny Name</td>
			<td>CEO</td>
			<td>Brief</td>
			<td>Sector</td>
		</tr>

		<%
			for (int i = 0; i < companyList.size(); i++) {
				Company e = (Company) companyList.get(i);
		%>
		<tr>
			<td><%=e.getCompanyId()%></td>

			<td><%=e.getBoardOfDirectors()%></td>
			<td><%=e.getCompany_Name()%></td>
			<td><%=e.getCeo()%></td>
			<td><%=e.getBreifwriteup()%></td>
			<td><%=e.getSector()%></td>
		</tr>
		<%
			}
		%>

	</table>


	</table>

</body>
</html>
 --%>





<!DOCTYPE html>
<%@page import="com.example.stockspring.model.Company"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
<title>ManageCompany</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url("images/bg.jpg"); /* The image used */
	background-color: #cccccc; /* Used if the image is unavailable */
	height: 500px; /* You must set a specified height */
	background-position: center; /* Center the image */
	background-repeat: no-repeat; /* Do not repeat the image */
	background-size: cover;
	/* Resize the background image to cover the entire container */
}
</style>
</head>

<body>
	<%
		List companyList = (List) request.getAttribute("companyList");
		System.out.println(companyList);
	%>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a href="admin.html">Home</a></li>
			<li><a href="ImportData.html">Import Data</a></li>
			<li><a href="manageCompany.html">Manage Company</a></li>
			<li><a href="ManageExchange.html">Manage Exchange</a></li>
			<li><a href="UpdateIPO.html">Update IPO Details</a></li>
			<li><a href="Login.html">
					<p align="right">
						<button type="button">Log out</button>
					</p>
			</a></li>
		</ul>
	</div>
	</nav>


	<div class="container">
		<h2>List of Companies</h2>

		<table style="width: 100%">



			<tr>
				<th scope="col">Pic</th>
				<th scope="col">Company Name</th>
				<th scope="col">CEO</th>
				<th scope="col">BOD</th>
				<th scope="col">Breif</th>
				<th scope="col">Update</th>
			</tr>

			<tr>
				<%
					for (int i = 0; i < companyList.size(); i++) {
						Company e = (Company) companyList.get(i);
				%>

				<tr>
				<td><%=e.getCompanyId()%></td>

			<td><%=e.getBoardOfDirectors()%></td>
			<td><%=e.getCompany_Name()%></td>
			<td><%=e.getCeo()%></td>
			<td><%=e.getBreifwriteup()%></td><td>
					<form action="EditComp.html">
						<input type="submit" value="Edit" />
					</form>
				</td>
		
			
		</tr>
		<%
			}
		%>
			
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>hknkm</td>
              <td>@mdo</td>
              <td>
                  <form action="EditComp.html">
                    <input type="submit" value="Edit" />
                  </form>
                </td>
            </tr>
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>hvmnmn</td>
              <td>@mdo</td>
              <td>
                  <form action="EditComp.html">
                    <input type="submit" value="Edit" />
                  </form>
                </td>
            </tr>


    </table>
		<br>
   
  </div>

</body>

</html>