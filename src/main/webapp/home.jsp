<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/style.css" var="css"></c:url>
<link rel="stylesheet" href="${ css }" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">

<title>Teepo Home</title>
</head>
<body style="height: 100vh; background-color: black;">
<c:import url="nav.jsp"></c:import>
<div class="container">
<h4 style="color:white">Trend</h4><hr/>
  	<div class="columnplacement row d-flex mt-2 justify-content-center">
    	<a href="MovieDetail.jsp" class="gii mr-2 mb-2 col-2">
    		<div class="card mr-2 " style="width: 200px;">
  				<img src="https://sportshub.cbsistatic.com/i/2022/05/23/da041e31-662a-47d1-9952-7ae01d190dad/the-gray-man-chris-evans-poster.jpg?auto=webp&width=1080&height=1350&crop=0.8:1,smart" class="card-img-top" alt="...">
  					<div class="card-body">
    				<div class="d-flex">
    					<div>
    						<p class="" style="font-size:14px">The Gray Man</p>
   							<p style="font-size:14px">2022</p>
    					</div>
    						<p style="font-size:14px">Movie</p>
    				</div>
  					</div>
			</div>
		</a>
		
</div>

<h4 style="color:white">Latest Movies</h4><hr/>
<div class="columnplacement row d-flex mt-2 justify-content-center">
    	<c:forEach items="${movies}" var="m">
    		<a class="gii mr-2 mb-2 col-2" href="/movie/detail?movieId=1">
    		<div class="card mr-2 " style="width: 200px;">
    			<c:url value="/image/${ m.poster }" var="image"></c:url>
  				<img src="${ image }">
  					<div class="card-body">
    				<div class="d-flex">
    					<div>
    						<p class="" style="font-size:14px">${ m.name }</p>
   							<p style="font-size:14px">${ m.releaseDate }</p>
    					</div>
    						<p style="font-size:14px">${ m.episodes > 1 ? 'Series' : 'Movie' }</p>
    				</div>
  					</div>
			</div>
		</a>
    	</c:forEach>
</div>

<h4 style="color:white">Latest Series</h4><hr/>
<div class="columnplacement row d-flex mt-2 justify-content-center">
    	<a class="gii mr-2 mb-2 col-2">
    		<div class="card mr-2 " style="width: 200px;">
  				<img src="https://sportshub.cbsistatic.com/i/2022/05/23/da041e31-662a-47d1-9952-7ae01d190dad/the-gray-man-chris-evans-poster.jpg?auto=webp&width=1080&height=1350&crop=0.8:1,smart" class="card-img-top" alt="...">
  					<div class="card-body">
    				<div class="d-flex">
    					<div>
    						<p class="" style="font-size:14px">The Gray Man</p>
   							<p style="font-size:14px">2022</p>
    					</div>
    						<p style="font-size:14px">Movie</p>
    				</div>
  					</div>
			</div>
		</a>
		
</div>
</div>
<div style="width: 100%;">
<c:import url="footer.jsp"></c:import>
</div>
           
  
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>