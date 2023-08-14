<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Slick Carousel -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

<style>
    .product-container {
        display: flex;
        gap: 20px;
        flex-wrap: wrap; /* flex 요소가 줄 바꿈하도록 설정 */
    }

    .product {
        width: 300px;
        height: 500px;
        border: 1px solid gray;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 10px;
    }

    .slider {
        width: 100%;
        flex: 1;
    }

    .slider img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .product-info {
        padding: 10px;
        text-align: center;
        background-color: #f7f7f7;
    }
</style>
</head>
<body>
<h3>상품 목록</h3>
<hr>
<a href="muploadForm.jsp"><button>상품 등록</button></a><br><br>
<div class="product-container">
    <c:forEach items="${list}" var="dto">
        <div class="product">
            <div class="slider">
                <c:forTokens items="${dto.picture}" delims="," var="file">
                    <div>
                        <img alt="${file}" src="/upload/${file}">
                    </div>
                </c:forTokens>
            </div>
            <div class="product-info">
                <c:out value="${dto.pname}" /><br>
                <c:out value="${dto.price}" /><br>
            </div>
        </div>
    </c:forEach>
</div>
<script>
    $(document).ready(function(){
        $('.slider').slick({
            arrows: true,
            dots: true,
            infinite: true
        });
    });
</script>
</body>
</html>
