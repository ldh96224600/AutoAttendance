<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>국제 대학교 - 내 강의실</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="./resources/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/css/admin.css" rel="stylesheet" />
<!-- <link href="./resources/css/style.css" rel="stylesheet" /> -->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Responsive navbar-->
	<%@ include file="Main_menu.jsp"%>

	<div class="container px-4 px-lg-5">
		<!-- Call to Action-->
		<div class="card text-white bg-secondary my-5 py-4 text-center">
			<div class="card-body">
				<h1 class="text-white m-0">강의 목록</h1>
			</div>
		</div>

	</div>
	
	<main>
 <!-- Content Row-->
 
            <div class="row gx-8 gx-lg-12">
            <c:forEach var="mem" items="${mem}" varStatus="status">
            	 <c:if test="${arr[status.index].getProfessor() ne null}">
	                <div class="col-md-4 mb-5">
	                    <div class="card h-100">
	                        <div class="card-body">
	                            <img class="card-img-top" alt="" src="./uploads/${arr[status.index].getSubject_img()}" height="300">
	                            <br><br>
	                            <p class="card-text">${arr[status.index].getSubject()}</p>
	                        </div>
	                       
	                        <div class="card-footer">
	                        	<a>교수명</a> <a>${arr[status.index].getProfessor()}</a><br>
	                        	<a>소속</a> <a>${cdto[status.index].getCol_major()}</a><br>
	                        	<a>강좌 개설일</a> <a>${arr[status.index].getClass_date()}</a><br>
	                        	<a class="btn btn-primary btn-sm" href="ClassView.do?subject=${arr[status.index].getSubject()}">상세 정보</a>
	                        </div>
	                       
	                    </div>
	                </div>
                 </c:if>
                 </c:forEach>
        	</div>
        	
	</main>

	<div id="anchorboard" class="card text-white bg-secondary my-5 py-4 text-center"></div>

	<jsp:include page="Main_footer.jsp"></jsp:include>


	<script src="js/scripts.js"></script>
</body>
</html>
