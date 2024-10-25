<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>IPro</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/corpboard.css">

</head>

<body>
<jsp:include page="../navbar.jsp"/>
<div class="main-content">
    <div class="jumbotron p-5 rounded">
        <h1 class="display-4">기업 면접 후기 & 리뷰</h1>
        <p class="lead">앞으로 근무할 기업은 어떤 모습일까 궁금하시죠?</p>
        <hr class="my-4 ">
        <p>현직 선배님들의 기업 리뷰와 미리 알아보는 면접 후기</p>
    </div>
    <div class="container">
        <!-- Search Section-->
        <div class="search-section">
            <div class="search-dropdown">
                <button class="dropdown-button">동록순 ▼</button>
            </div>

            <div class="search-dropdown">
                <button class="dropdown-button">경력 전체 ▼</button>
            </div>

            <div class="search-dropdown">
                <button class="dropdown-button">직무·직업 전체 ▼</button>
            </div>
            <input type="text" class="search-input" placeholder="기업명">
            <button class="search-button">검색</button>
            <button class="reset-button">⟲</button>
        </div>
        <!-- interview review Section Table style -->
        <!-- Table Section for Notice Board -->
        <h2 class="section-title">면접 후기</h2>
        <table class="table table-striped notice-board">
            <thead>
            <tr>
                <th scope="col">idx</th>
                <th scope="col">기업명</th>
                <th scope="col">글 제목</th>
                <th scope="col">Date</th>
                <th scope="col">Username</th>
                <th scope="col">Count</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="board" items="${list}">
                <tr>
                    <td>${board.idx}</td>
                    <td>${board.companyName}</td>
                    <td>${board.title}</td>
                    <td><fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${board.writer}</td>
                    <td>${board.viewCount}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


        <!-- Pagination -->
        <div class="pagination">
            <button class="active">1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>6</button>
            <button>7</button>
            <button>8</button>
            <button>9</button>
            <button>10</button>
            <button>다음 ></button>
        </div>
        <!-- Write Button -->
        <button class="write-button" onclick="location.href='${pageContext.request.contextPath}/review_board/write'">
            <span class="write-icon">✎</span>
            후기 등록하기
        </button>
        <!--corp review Section -->
        <h2 class="section-title mt-5">기업 리뷰</h2>
        <div class="row row-cols-1 g-4">
            <div class="col">
                <div class="reviewcard">
                    <div class="reviewcard-body">
                        <img src="/api/placeholder/100/100" alt="review Image">
                        <div class="corpreviewtitle">
                            <h5 class="reviewcard-title">넥슨(주)</h5>
                            <p class="reviewcard-text">뭘 써야할까</p>
                            <footer class="blockquote-footer">사용자 닉네임 1</footer>
                        </div>
                        <div class="content-wrapper">
                            <div class="corpreviewtext1">
                                <a># 대기업</a>
                                <a># 복장 자유</a>
                                <a># 자유로운 출근</a>
                            </div>
                            <div class="corpreviewtext2">
                                <p>"근무시간 상관없이 주어진 업무만 다 하면 퇴근이 가능하다."</p>
                                <p>"자유로운 분위기 속에서 책임감이 부여되는 곳, 열린 마인드의 경영진"</p>
                            </div>
                        </div>
                        <span class="review-count">기업 리뷰 -건</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="reviewcard">
                    <div class="reviewcard-body">
                        <img src="/api/placeholder/100/100" alt="review Image">
                        <div class="corpreviewtitle">
                            <h5 class="reviewcard-title">넥슨(주)</h5>
                            <p class="reviewcard-text">뭘 써야할까</p>
                            <footer class="blockquote-footer">사용자 닉네임 1</footer>
                        </div>
                        <div class="content-wrapper">
                            <div class="corpreviewtext1">
                                <a># 대기업</a>
                                <a># 복장 자유</a>
                                <a># 자유로운 출근</a>
                            </div>
                            <div class="corpreviewtext2">
                                <p>"근무시간 상관없이 주어진 업무만 다 하면 퇴근이 가능하다."</p>
                                <p>"자유로운 분위기 속에서 책임감이 부여되는 곳, 열린 마인드의 경영진"</p>
                            </div>
                        </div>
                        <span class="review-count">기업 리뷰 -건</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="reviewcard">
                    <div class="reviewcard-body">
                        <img src="/api/placeholder/100/100" alt="review Image">
                        <div class="corpreviewtitle">
                            <h5 class="reviewcard-title">넥슨(주)</h5>
                            <p class="reviewcard-text">뭘 써야할까</p>
                            <footer class="blockquote-footer">사용자 닉네임 1</footer>
                        </div>
                        <div class="content-wrapper">
                            <div class="corpreviewtext1">
                                <a># 대기업</a>
                                <a># 복장 자유</a>
                                <a># 자유로운 출근</a>
                            </div>
                            <div class="corpreviewtext2">
                                <p>"근무시간 상관없이 주어진 업무만 다 하면 퇴근이 가능하다."</p>
                                <p>"자유로운 분위기 속에서 책임감이 부여되는 곳, 열린 마인드의 경영진"</p>
                            </div>
                        </div>
                        <span class="review-count">기업 리뷰 -건</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="reviewcard">
                    <div class="reviewcard-body">
                        <img src="/api/placeholder/100/100" alt="review Image">
                        <div class="corpreviewtitle">
                            <h5 class="reviewcard-title">넥슨(주)</h5>
                            <p class="reviewcard-text">뭘 써야할까</p>
                            <footer class="blockquote-footer">사용자 닉네임 1</footer>
                        </div>
                        <div class="content-wrapper">
                            <div class="corpreviewtext1">
                                <a># 대기업</a>
                                <a># 복장 자유</a>
                                <a># 자유로운 출근</a>
                            </div>
                            <div class="corpreviewtext2">
                                <p>"근무시간 상관없이 주어진 업무만 다 하면 퇴근이 가능하다."</p>
                                <p>"자유로운 분위기 속에서 책임감이 부여되는 곳, 열린 마인드의 경영진"</p>
                            </div>
                        </div>
                        <span class="review-count">기업 리뷰 -건</span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="reviewcard">
                    <div class="reviewcard-body">
                        <img src="/api/placeholder/100/100" alt="review Image">
                        <div class="corpreviewtitle">
                            <h5 class="reviewcard-title">넥슨(주)</h5>
                            <p class="reviewcard-text">뭘 써야할까</p>
                            <footer class="blockquote-footer">사용자 닉네임 1</footer>
                        </div>
                        <div class="content-wrapper">
                            <div class="corpreviewtext1">
                                <a># 대기업</a>
                                <a># 복장 자유</a>
                                <a># 자유로운 출근</a>
                            </div>
                            <div class="corpreviewtext2">
                                <p>"근무시간 상관없이 주어진 업무만 다 하면 퇴근이 가능하다."</p>
                                <p>"자유로운 분위기 속에서 책임감이 부여되는 곳, 열린 마인드의 경영진"</p>
                            </div>
                        </div>
                        <span class="review-count">기업 리뷰 -건</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.querySelectorAll('.interview-header').forEach(header => {
        header.addEventListener('click', () => {
            const card = header.closest('.interview-card');
            card.classList.toggle('active');
        });
    });
</script>


<jsp:include page="../navbar.jsp"/>
</body>

</html>