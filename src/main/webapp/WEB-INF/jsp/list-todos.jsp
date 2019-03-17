<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
<title>Todo's for ${name }</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<div class="container">
		<h1>Your Todos</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Description</th>
					<th>Target Date</th>
					<th>Completed?</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
			<!-- same as for(Item todo: todos) -->
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a class="btn btn-danger" type="button" href="/delete-todo?id=${todo.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h3>Here is your list of todos ${name }:</h3>
		${todos }
		<div><a class="button" href="/add-todo">Add a Todo</a></div>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>