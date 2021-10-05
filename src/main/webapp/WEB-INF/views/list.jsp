<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>list</title>
<link rel="stylesheet" href="./resources/css/list.css?">
<script src="./resources/js/jquery.js"></script>
</head>
<script>
/*$(document).ready(
		function() {
		
			document.getElementById("pack_price01").innerHTML = document
			.getElementById("pack_price01").innerHTML.toString()
			.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		
		});*/
			
</script>
<%
// request 객체로부터 파라미터를 가져옴.
String pack_sub_cate = request.getParameter("pack_sub_cate");
String date = request.getParameter("pack_start_date");
String login_id = request.getParameter("id");

System.out.println(pack_sub_cate);
System.out.println(date);
%>
<body>
<%-- 	<section class="list">
		<div class="container">
			<div class="list_left">
				<form method="post">
					<h2>어디로 떠나고싶으세요?</h2>
					<p>네?</p>
					<p>${id}님로그인을환영합니다</p>
				</form>
			</div>
		</div>
	</section>--%>
	<div class="wrap">
		<div style="margin-top:10px;margin-left:95px;margin-right:95px;"id="header">
			<jsp:include page="header2.jsp" />
		</div>
		
			<div class="section">
				<input type="radio" name="slide" id="slide01" checked> <input
					type="radio" name="slide" id="slide02"> <input type="radio"
					name="slide" id="slide03">

				<div class="slidewrap">
					<ul class="slidelist">
						<li><a> <img src="./resources/image/tai.jpg"></a></li>
						<li><a> <img src="./resources/image/hawai.jpg"></a></li>
						<li><a> <img src="./resources/image/sws.jpg"></a></li>

						<div class="slide-control">
							<div class="control01">
								<label for="slide03" class="left"></label> <label for="slide02"
									class="right"></label>
							</div>
							<div class="control02">
								<label for="slide01" class="left"></label> <label for="slide03"
									class="right"></label>
							</div>
							<div class="control03">
								<label for="slide02" class="left"></label> <label for="slide01"
									class="right"></label>
							</div>
						</div>
				</div>
			</div>
			</ul>
		<c:choose>
			<c:when test="${empty id && !empty plist}">
				<c:forEach var="p" items="${plist }">
					<div class="res_area">
						<fieldset style="border:0px">
							<div class="user_name"><a href="/Project/login">로그인 후 이용해주세요!</a></div>
							<div class="res_name">${p.pack_sub_cate} 카테고리를 선택하셨어요!</div>
							<div class="res_start">출발일은 ${p.pack_start_date }입니다.</div>
						</fieldset>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach var="p" items="${plist }">
					<div class="res_area">
						<fieldset style="border:0px">
							<div class="user_name">${id}님 안녕하세요!</div>
							<div class="res_name">${p.pack_sub_cate} 카테고리를 선택하셨어요!</div>
							<div class="res_start">출발일은 ${p.pack_start_date }입니다.</div>
						</fieldset>
					</div>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	<%-- 	<c:if test="${!empty plist }">
			<c:forEach var="p" items="${plist }">
				<div class="res_area">
					<fieldset style="border:0px">
						<div class="user_name">${id}님 안녕하세요!</div>
						<div class="res_name">${p.pack_name} 카테고리를 선택하셨어요!</div>
						<div class="res_start">출발일은 ${p.pack_start_date }입니다.</div>
					</fieldset>
				</div>
			</c:forEach>
		</c:if> --%>
	<section class="serv_list">
		<div class="container">
		<div class="bList_count" style="margin-bottom:20px;">관련 패키지 : (${totalCount})</div>
			<div class="title">
					<h1>${p.pack_sub_cate }</h1>
			</div>

			<div class="box_list">
			
			<c:if test="${empty plist}">
				<h1>목록이 없습니다.</h1>
			</c:if>
			
			
			
			<c:if test="${!empty plist}">
				<c:forEach var="p" items="${plist}">
				<div class="box">
					<div class="img">
						<img src="${p.pack_pic01}" alt="">
					</div>
					<div class="text">
						<h2>${p.pack_name}</h2>
						<p>${p.pack_desc}</p>
						<p class="a_price" id="pack_price01">성인:${p.pack_price01 }원~</p>						
						<button onclick="location='travel_description?main_category=${p.pack_main_cate}&sub_category=${p.pack_sub_cate}&pack_code=${p.pack_code}';">예약하기</button>
					</div>
				</div>
				</c:forEach>
			</c:if>
	
			</div>
		</div>
	</section>
	</div>
	<div class="footer_box">
		<div id="footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>