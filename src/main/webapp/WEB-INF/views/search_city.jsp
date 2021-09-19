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

	
		opener.document.getElementById("city").value = city;
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
				<td class="country">유럽</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>

						<li onclick="selectnow('서유럽');" >&nbsp;서유럽&nbsp;</li>
						<li onclick="selectnow('파리');" >&nbsp;파리&nbsp;</li>
						<li onclick="selectnow('로마');" >&nbsp;로마&nbsp;</li>
						<li onclick="selectnow('베니스');" >&nbsp;베니스&nbsp;</li>
						<li onclick="selectnow('루체른');" >&nbsp;루체른&nbsp;</li>
						<li onclick="selectnow('동유럽/발칸');" >&nbsp;동유럽/발칸&nbsp;</li>
						<li onclick="selectnow('바르셀로나');" >&nbsp;바르셀로나&nbsp;</li>
						<li onclick="selectnow('리스본');" >&nbsp;리스본&nbsp;</li>
						<li onclick="selectnow('부다페스트');" >&nbsp;부다페스트&nbsp;</li>
						<li onclick="selectnow('마드리드');" >&nbsp;마드리드&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">동남아</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('방콕');">&nbsp;방콕&nbsp;</li>
						<li onclick="selectnow('파타야');">&nbsp;파타야&nbsp;</li>
						<li onclick="selectnow('푸켓');">&nbsp;푸켓&nbsp;</li>
						<li onclick="selectnow('싱가포르');">&nbsp;싱가포르&nbsp;</li>
						<li onclick="selectnow('코타키나발루');">&nbsp;코타키나발루&nbsp;</li>
						<li onclick="selectnow('쿠알라룸푸르');">&nbsp;쿠알라룸푸르&nbsp;</li>
						<li onclick="selectnow('발리');">&nbsp;발리&nbsp;</li>
						<li onclick="selectnow('보라카이');">&nbsp;보라카이&nbsp;</li>
						<li onclick="selectnow('팔라완');">&nbsp;팔라완&nbsp;</li>
						<li onclick="selectnow('라오스');">&nbsp;라오스&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">일본</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('오사카');">&nbsp;오사카&nbsp;</li>
						<li onclick="selectnow('동경');">&nbsp;동경&nbsp;</li>
						<li onclick="selectnow('후쿠오카');">&nbsp;후쿠오카&nbsp;</li>
						<li onclick="selectnow('삿포로');">&nbsp;삿포로&nbsp;</li>
						<li onclick="selectnow('오키나와');">&nbsp;오키나와&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">홍콩/대만</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('홍콩');">&nbsp;홍콩&nbsp;</li>
						<li onclick="selectnow('마카오');">&nbsp;마카오&nbsp;</li>
						<li onclick="selectnow('가오슝');">&nbsp;가오슝&nbsp;</li>
						<li onclick="selectnow('타이페이');">&nbsp;타이베이&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">미주</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('미서부');">&nbsp;미서부&nbsp;</li>
						<li onclick="selectnow('로스엔젤레스');">&nbsp;로스앤젤레스&nbsp;</li>
						<li onclick="selectnow('샌프란시스코');">&nbsp;샌프란시스코&nbsp;</li>
						<li onclick="selectnow('미동부');">&nbsp;미동부&nbsp;</li>
						<li onclick="selectnow('뉴욕');">&nbsp;뉴욕&nbsp;</li>
						<li onclick="selectnow('워싱턴');">&nbsp;워싱턴&nbsp;</li>
						<li onclick="selectnow('하와이');">&nbsp;하와이&nbsp;</li>
						<li onclick="selectnow('밴쿠버');">&nbsp;밴쿠버&nbsp;</li>
						<li onclick="selectnow('중남미');">&nbsp;중남미&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">국내</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li onclick="selectnow('제주');">&nbsp;제주&nbsp;</li>
						<li onclick="selectnow('백령도');">&nbsp;백령도&nbsp;</li>
						<li onclick="selectnow('홍도');">&nbsp;홍도&nbsp;</li>
						<li onclick="selectnow('흑산도');">&nbsp;흑산도&nbsp;</li>
						<li onclick="selectnow('울릉도');">&nbsp;울릉도&nbsp;</li>
						<li onclick="selectnow('여수');">&nbsp;여수&nbsp;</li>

					</ul></td>
			</tr>

		</table>
	</div>
</body>
</html>