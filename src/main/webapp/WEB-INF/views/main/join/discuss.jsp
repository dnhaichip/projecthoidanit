<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
</head>
<body>
<!-- Loader -->
	<div id="loader">
		<div class="loader-container">
			<img src="images/site.gif" alt="" class="loader-site">
		</div>
	</div>
	<!-- End Loader -->

	<!-- All Page -->
	<div id="wrapper">

		<!-- Top Area -->
		<%@ include file="/WEB-INF/views/main/common/top-area.jsp" %>
		<!-- End Top Area -->

		<!-- Header -->
		<%@ include file="/WEB-INF/views/main/common/header.jsp" %>
		<!-- End Header -->

		<!-- Top My Page -->
		<section class="grey page-title">
			<div class="container">
				<div class="row">
					<div class="col-md-6 text-left">
						<h1>My Page</h1>
					</div>
					<div class="col-md-6 text-right">
						<div class="bread">
							<ol class="breadcrumb">
								<li><a href="#">Home</a></li>
								<li><a href="#">Course</a></li>
								<li class="active">Join</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Top My Page -->

		<!-- Sidebar + Content -->
		<section class="white section">
			<div class="container">
				<div class="row">
					
					<!-- Sidebar -->
					<c:set var="btdiscuss" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/join/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-9">
                        <div class="course-description">
                            <small>Course Status: <span>In Progress</span> </small>
                            <small>Course Price: <span>$21.00</span> </small>
                            <h3 class="course-title">Learning Quality Graphic Design & Mockup and Business Card</h3>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                                suffered alteration in some form, by injected humour, or randomised words which don't
                                look even slightly believable. If you are going to use a passage of Lorem Ipsum, you
                                need to be sure there isn't anything embarrassing hidden in the middle of text. All the
                                Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,
                                making this the first true generator on the Internet.</p>
                            <p>It uses a dictionary of over 200 Latin words, combined with a handful of model sentence
                                structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is
                                therefore always free from repetition, injected humour, or non-characteristic words etc.
                            </p>
                        </div>
                        <div class="course-table">
                            <h4>Notices</h4>                      
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="col-md-3">Nguoi thong bao</th>
                                        <th class="col-md-6">Name</th>
                                        <th class="col-md-3">Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>                                 
                                        <td>teacher 1</td>  
                                        <td><a href="#">Reference 1</a> </td>
                                        <td>Time</td>                               
                                    </tr>
                                    
                                    <tr>                                 
                                        <td>teacher 1</td>  
                                        <td><a href="#">Reference 2</a> </td>
                                        <td>Time</td>                               
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>                     
                    </div>
					
				</div>
			</div>
		</section>
		<!-- End Sidebar + Content -->

		<!-- Footer -->
		<%@ include file="/WEB-INF/views/main/common/footer.jsp" %>
		<!-- End Footer -->
	</div>
	<!-- End All Page -->

	<!-- Script -->
	<%@ include file="/WEB-INF/views/main/common/script.jsp" %>
	<!-- End Script -->
</body>
</html>