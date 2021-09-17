<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>list</title>
<link rel="stylesheet" href="./resources/css/list.css?">
<script src="./resources/js/jquery.js"></script>
</head>
<body>
	<section class="header">
		<div>
			<h1>리스트페이지</h1>
		</div>
	</section>

	<section class="list">
		<div class="container">
			<div class="list_left">
				<form method="post" >
					<h2>어디로 떠나고싶으세요?</h2>
					<p>네?</p>
					<p>${id}님로그인을 환영합니다</p>
				</form>
			</div>
		</div>
	</section>
	
	<section class="serv_list">
	<div class="bList_count">글개수:${totalCount}</div>
		<div class="container">
			<div class="title">
				<h1>북미</h1>
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
						<button onclick="location='travel_description?main_category=${p.pack_main_cate}&sub_category=${p.pack_sub_cate}&pack_code=${p.pack_code}';">예약하기</button>
					</div>
				</div>
				</c:forEach>
			</c:if>
			
			</div>
		</div>
	</section>
</body>
