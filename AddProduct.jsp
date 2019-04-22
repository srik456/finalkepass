<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cogni.smart_shop.bean.*"%>
<%@page import="java.util.List"%>
<html>

<head>
<link href="https://fonts.googleapis.com/css?family=Aladin"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

<title>Add Product</title>
<script src="AddProduct.js"></script>
<link rel="stylesheet" href="AddProduct.css">
</head>

<body>
	<table>
		<tr>
			<td>
				<form action="ProductController" method="post" autocomplete="on"
					enctype="multipart/form-data">
					<h1>
						<center>Add Product</center>
					</h1>
					<div>
						<label><b>Product Name*</b></label><label
							class="validation-error hide" id="productNameValidationError">This
							field is required.</label> <input type="text" name="Product_Name"
							id="productName" required>
					</div>
					<br>
					<div>
						<label><b>Product Image</b></label> <input type="file" name="pic">
					</div>
					<br>
					<div>
						<label><b>No. of Items</b></label> <input type="number"
							name="Item" id="productItems">
					</div>
					<div>
						<label><b>Manufacturing Date</b></label> <input type="date"
							name="Manufacture" id="productMFG">
					</div>
					<br>
					<div>
						<label><b>Expiration Date</b></label> <input type="date"
							name="Expiry" id="productEXP">
					</div>

					<div>
						<label><b>Location</b></label> <input type="text" name="Location"
							id="productMFG">
					</div>
					<div>
						<label><b>Product_Price</b></label> <input type="number"
							name="product_price" id="productMFG">
					</div>
					<div>
						<label><b>Rating</b></label> <input type="text" name="Rating"
							id="productMFG">
					</div>
					<div class="form-action-buttons">
						<input type="submit" value="Add Product">
					</div>

				</form>
			</td>
			<td></td>
		</tr>
	</table>


	<table id="example" class="display" style="width: 100%">
		<thead>
			<tr>
				<th>Product Name</th>
				<th>Product Image</th>
				<th>Item</th>
				<th>Manufacturing Date</th>
				<th>Expiry Date</th>
				<th>Location</th>
				<th>Price</th>
				<th>Rating</th>

			</tr>
		</thead>
		<tbody>

			<%
				List<ProductBean> productBeanList = (ArrayList<ProductBean>) session.getAttribute("productBeanList");
				if (productBeanList != null && productBeanList.size() > 0) {
					for (int i = 0; i < productBeanList.size(); i++) {
						ProductBean productBean = productBeanList.get(i);
			%>

			<%
				String name = productBean.getProduct_name();
			%>
			<%
			int count=productBean.getNoi();
			%>
			<tr>
				<td><%=name%></td>
				<td><a href="ViewImageServlet?id=<%=name%>">Show Image</a></td>
				<%-- <td><%=productBean.getProduct_Image()%></td> --%>

				<td><%=count%></td>
				<td><%=productBean.getDom()%></td>
				<td><%=productBean.getDoe()%></td>
				<td><%=productBean.getLocation() %>
				<td><%=productBean.getPrice() %>
				<td><%=productBean.getRating() %>
			</tr>

			<%
				}
				}
			%>

		</tbody>
	</table>

</body>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>
</body>
</html>