<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>cal</title>
<link rel="stylesheet" href="../resources/css/cal.css?">
<script src="cal.js"></script>
</head>
<body>
 <div class="calendar">
  <div class="header">
   <div class="year-month"></div>
      <div class="nav">
        <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
        <button class="nav-btn go-today" onclick="goToday()">Today</button>
        <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
      </div>
  </div>
  <div class="main">
   <div class="days">
    <div class="day">일</div>
    <div class="day">월</div>
    <div class="day">화</div>
    <div class="day">수</div>
    <div class="day">목</div>
    <div class="day">금</div>
    <div class="day">토</div>
   </div>
  <div class="dates"></div>
 </div>
</div>
</body>
</html>