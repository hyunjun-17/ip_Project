<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>

<title>기업 분석 메인</title>
<link rel="stylesheet" href="<c:url value='/resources/static/corpmain.css'/>">

<jsp:include page="../navbar.jsp" />

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jumbotron p-5 rounded">
        <h1 class="display-4">기업 분석 페이지 (Main)</h1>
        <p class="lead">앞으로 근무할 기업은 어떤 모습일까 궁금하시죠?</p>
        <hr class="my-4">
        <p>AI가 분석해주는 SWOT · 최신 동향</p>
    </div>
    <div class="container mt-4">
        <!-- CorpSection -->
        <h2 class="section-title mt-5">기업 분석 카드 (10개)</h2>
        <div class="row row-cols-1 row-cols-md-5 g-4">
            <a href="<c:url value='${pageContext.request.contextPath}/company/corp'/>" class="text-decoration-none">
                <div class="col">
                    <div class="card h-100">
                        <img src="<c:url value='/resources/static/img/company_default.png'/>" class="card-img-top" alt="Company 1">
                        <div class="card-body" id="corp-card-body">
                            <h5 class="card-title">네이버</h5>
                            <p class="card-text1">대기업</p>
                            <p class="card-text2">포털 및 기타 인터넷 정보 매개...</p>
                        </div>
                    </div>
                </div>
            </a>
            <!-- 나머지 카드들 반복 -->
            <c:forEach var="i" begin="2" end="10">
                <div class="col">
                    <div class="card h-100">
                        <img src="<c:url value='/resources/static/img/company_default.png'/>" class="card-img-top" alt="Company ${i}">
                        <div class="card-body" id="corp-card-body1">
                            <h5 class="card-title">IT 기업 이름</h5>
                            <p class="card-text1">기업 형태</p>
                            <p class="card-text2">업종</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <hr>
    </div>
</div>

<%@ include file="../footer.jsp" %>