<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/main/common/head.jsp"%>
	<style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');

        body {
            margin: 0;
            padding: 0;
            font-family: 'Open Sans', serif;
            background: #eee;
            background-color: #eee
        }

        .content {
            /* width: 420px; */
            height: auto;
        }

        .ratings {
            background-color: #fff;
            padding: 54px;
            border: 1px solid rgba(0, 0, 0, 0.1);
            box-shadow: 0px 10px 10px #E0E0E0;
            height: 250px;
        }

        .product-rating {
            font-size: 50px
        }

        .stars i {
            font-size: 18px;
            color: gold;
        }

        .rating-text {
            margin-top: 10px
        }

        div.stars {
            width: auto;
            display: inline-block
        }

        .mt-200 {
            margin-top: 200px
        }

        input.star {
            display: none
        }

        label.star {
            float: right;
            padding: 10px;
            font-size: 36px;
            color: #4A148C;
            transition: all .2s
        }

        input.star:checked~label.star:before {
            content: '\f005';
            color: #FD4;
            transition: all .25s
        }

        input.star-5:checked~label.star:before {
            color: #FE7;
            text-shadow: 0 0 20px #952
        }

        input.star-1:checked~label.star:before {
            color: #F62
        }

        label.star:hover {
            transform: rotate(-15deg) scale(1.3)
        }

        label.star:before {
            content: '\f006';
            font-family: FontAwesome
        }
    </style>
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
								<li><a href="<c:url value='/mypage/info'/>">Home</a></li>								
								<li><a href="<c:url value='/mypage/mycourse'/>">Course</a></li>
								<li class="active">Review</li>
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
					<c:set var="btreviews" value="${'active'}"/>
					<%@ include file="/WEB-INF/views/main/join/sidebar.jsp" %>
					<!-- End Sidebar -->
					
					<div id="course-content" class="col-md-9">
                        <div class="row">
                            <h1 class="col-md-3">Reviews</h1>
                        </div>

                        <div class="row">
                            <div class="d-flex justify-content-center col-md-4">
                                <div class="content">
                                    <div class="ratings">
                                        <div class="text-center">
                                            <span class="product-rating">4.6</span>
                                            <span>/5</span>
                                            <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                                    class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                                    class="fa fa-star-o"></i> </div>
                                                    
                                            <div class="rating-text"> <span>46 ratings & 15 reviews</span> </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-center col-md-8">
                                <div class="content">
                                    <div class="ratings">                                   
                                        <div class="row">
                                            <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>
                                        <div class="row">
                                            <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                                        </div>
                                        <div class="row">
                                            <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>  
                                        <div class="row">
                                            <div class="stars"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>
                                        </div>
                                        <div class="row">
                                            <div class="stars"> <i class="fa fa-star"></i> </i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="widget">
                                <div class="newsletter">
                                    <div class="row">
                                        <h2 class="col-md-8">Your reviews</h2>
                                        <div class="col-md-4">
                                            <div class="stars">
                                                <form action=""> <input class="star star-5" id="star-5" type="radio"
                                                        name="star" /> <label class="star star-5" for="star-5"></label>
                                                    <input class="star star-4" id="star-4" type="radio" name="star" />
                                                    <label class="star star-4" for="star-4"></label> <input
                                                        class="star star-3" id="star-3" type="radio" name="star" />
                                                    <label class="star star-3" for="star-3"></label> <input
                                                        class="star star-2" id="star-2" type="radio" name="star" />
                                                    <label class="star star-2" for="star-2"></label> <input
                                                        class="star star-1" id="star-1" type="radio" name="star" />
                                                    <label class="star star-1" for="star-1"></label>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="#">
                                        <textarea type="text" class="form-control"
                                            placeholder="Enter your review for this product. Maximum 2000 characters are allowed."></textarea>
                                        <button type="submit" class="btn btn-primary">Send</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <hr>
                        
                        <div class="row">
                            <hr>
                            <div class="col-sm-3">
                                <img src="http://dummyimage.com/60x60/666/ffffff&amp;text=No+Image" class="img-circle">
                                <div class="review-block-name"><a href="#">nktailor</a></div>
                                <div class="review-block-date">January 29, 2016<br>1 day ago</div>
                            </div>
                            <div class="col-sm-9">
                                <div class="stars"> 
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                <h4>this was nice in buy</h4>
                                <div class="review-block-description">this was nice in buy. this was nice in buy.</div>
                            </div>
                            <hr>
                        </div>

                        <div class="row">
                            <hr>
                            <div class="col-sm-3">
                                <img src="http://dummyimage.com/60x60/666/ffffff&amp;text=No+Image" class="img-circle">
                                <div class="review-block-name"><a href="#">nktailor</a></div>
                                <div class="review-block-date">January 29, 2016<br>1 day ago</div>
                            </div>
                            <div class="col-sm-9">
                                <div class="stars"> 
                                    <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> </div>
                                <h4>this was nice in buy</h4>
                                <div class="review-block-description">this was nice in buy. this was nice in buy.</div>
                            </div>
                            <hr>
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