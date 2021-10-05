<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" type="text/css"
	href="./resources/css/search_city.css" />

<SCRIPT>
	function selectnow(city) {

		opener.document.getElementById("pack_sub_cate").value = city;
		parent.window.close();
		/* 	
		 $("#city", opener.document).val($("#city_sel").val());
		 parent.window.close(); */
	}
</SCRIPT>
</head>
<body>

	<div id="choose_city">
		<h2 style="padding: 3px;">주요 지역 선택</h2>
	</div>
	<div>
		<table id="table_city" style="overflow: auto;">


			<tr>
				<td class="country">괌/사이판</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>

						<li onclick="selectnow('괌');">&nbsp;괌&nbsp;</li>
						<li onclick="selectnow('사이판');">&nbsp;사이판&nbsp;</li>
						<li onclick="selectnow('팔라우');">&nbsp;팔라우&nbsp;</li>

					</ul></td>
			</tr>
			<tr>
				<td class="country">하와이/미국/캐나다</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('하와이');">&nbsp;하와이&nbsp;</li>
						<li onclick="selectnow('미동부');">&nbsp;미동부&nbsp;</li>
						<li onclick="selectnow('중남미');">&nbsp;중남미&nbsp;</li>
						<li onclick="selectnow('미서부');">&nbsp;미서부&nbsp;</li>
						<li onclick="selectnow('캐나다');">&nbsp;캐나다&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">유럽</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('서유럽');">&nbsp;서유럽&nbsp;</li>
						<li onclick="selectnow('동유럽');">&nbsp;동유럽&nbsp;</li>
						<li onclick="selectnow('그리스');">&nbsp;그리스&nbsp;</li>
						<li onclick="selectnow('스페인');">&nbsp;스페인&nbsp;</li>
						<li onclick="selectnow('독일');">&nbsp;독일&nbsp;</li>
						<li onclick="selectnow('영국');">&nbsp;서유럽&nbsp;</li>
						<li onclick="selectnow('모로코');">&nbsp;동유럽&nbsp;</li>
						<li onclick="selectnow('발칸');">&nbsp;그리스&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">동남아</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('방콕');">&nbsp;방콕&nbsp;</li>
						<li onclick="selectnow('베트남');">&nbsp;베트남&nbsp;</li>
						<li onclick="selectnow('치앙마이');">&nbsp;치앙마이&nbsp;</li>
						<li onclick="selectnow('파타야');">&nbsp;파타야&nbsp;</li>
						<li onclick="selectnow('세부');">&nbsp;세부&nbsp;</li>
						<li onclick="selectnow('코타키나발루');">&nbsp;코타키나발루&nbsp;</li>
						<li onclick="selectnow('보라카이');">&nbsp;보라카이&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">홍콩/마카오/대만</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('홍콩');">&nbsp;홍콩&nbsp;</li>
						<li onclick="selectnow('마카오');">&nbsp;마카오&nbsp;</li>
						<li onclick="selectnow('대만');">&nbsp;대만&nbsp;</li>
						<li onclick="selectnow('심천');">&nbsp;심천&nbsp;</li>

					</ul></td>
			</tr>
			<tr>
				<td class="country">중앙아시아/몽골</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('중앙아시아');">&nbsp;중앙아시아&nbsp;</li>
						<li onclick="selectnow('몽골');">&nbsp;몽골&nbsp;</li>


					</ul></td>
			</tr>
			<tr>
				<td class="country">중국</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('북경');">&nbsp;북경&nbsp;</li>
						<li onclick="selectnow('상해');">&nbsp;상해&nbsp;</li>
						<li onclick="selectnow('하이난');">&nbsp;하이난&nbsp;</li>
						<li onclick="selectnow('청도');">&nbsp;청도&nbsp;</li>

					</ul></td>
			</tr>
			<tr>
				<td class="country">국내</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('강릉');">&nbsp;강릉&nbsp;</li>
						<li onclick="selectnow('여수');">&nbsp;여수&nbsp;</li>
						<li onclick="selectnow('제주도');">&nbsp;제주도&nbsp;</li>
						<li onclick="selectnow('부산');">&nbsp;부산&nbsp;</li>
						<li onclick="selectnow('경주');">&nbsp;경주&nbsp;</li>
					</ul></td>
			</tr>
		</table>
	</div>
</body>
</html>