<%@include file="/WEB-INF/views/template/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"
                 src="<c:url value="/resources/images/back2.jpeg" />"
                 alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Bem Vindo</h1>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus deleniti dicta facere laboriosam magni modi nisi optio sit! Aliquid est fuga minus modi nam nobis sequi sint tempore, tenetur unde!</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image"
                 src="<c:url value="/resources/images/back1.jpeg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Teatro!</h1>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis incidunt ipsum, labore libero officia quisquam rerum ut. Assumenda dolores earum, facere magnam odio rem repellendus sunt veniam veritatis, vero voluptatem.</p>

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image"
                 src="<c:url value="/resources/images/back3.jpg" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>Cinema</h1>

                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet autem corporis ea eaque eligendi fugiat itaque, iure iusto laudantium molestias natus non nulla quibusdam quidem repellat sunt, ullam unde ut!</p>

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Próximo</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Show" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/back2.jpeg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Shows</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

        </div><!-- /.col-lg-4 -->



    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Cinema" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/back3.jpg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Cinema</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

        </div><!-- /.col-lg-4 -->

    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Teatro" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/back1.jpeg" />" alt="Instrument
                Image" width="140" height="140"></a>

            <h2>Teatro</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>

        </div><!-- /.col-lg-4 -->


    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/template/footer.jsp" %>

