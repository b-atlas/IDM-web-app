<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<style>
		body {
		  padding-top: 5rem;
		}
		.starter-template {
		  padding: 3rem 1.5rem;
		  text-align: center;
		}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
</head>
<body>
	<div class="container">
		<h1 class="h3 mb-3 font-weight-normal">QCM</h1>
	 	<form:form action="sendqcm" modelAttribute="qcm" method="POST">
	 		
	 		<form:hidden path="mode"/>
	 		<form:hidden path="domaine"/>
	 		<form:hidden path="questions"/>
	 		
	 		<c:forEach var="question" items="${qcm.questions}">
				
				<p>${question.data}?</p>
				<c:forEach var="reponse" items="${question.reponses}">
					<div class="form-check form-check-inline">
						<form:radiobutton path="r0" value="${reponse}" name = "${question}" label="${reponse.data}"  class="form-check-input"/>
					</div>
				</c:forEach>
			</c:forEach>
			
			<input type="submit" value="envoyer" class="save" class="btn btn-lg btn-primary btn-block"/>
		</form:form>
		<br>
	</div>
</body>
</html>