<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" type="text/css"
	href="./resources/css/search_city.css" />

<SCRIPT>
	function selectnow() {
		
		opener.document.getElementById("city").value = document.getElementById("city").value;
		parent.window.close();
		
	}


</SCRIPT>
</head>
<body>

	<div id="choose_city" >
		<h2 style="padding: 3px;">주요 지역 선택</h2>
	</div>
	<div>
		<table id="table_city" style="overflow: auto;">
		
		
			<tr>
				<td class="country" >유럽</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
				
						<li>
						<a href="#"onclick="selectnow();" id="city" >&nbsp;서유럽&nbsp;</a></li>
						<li onclick="selectnow();" id="city" value="파리">&nbsp;파리&nbsp;</li>
						<li>&nbsp;로마&nbsp;</li>
						<li>&nbsp;베니스&nbsp;</li>
						<li>&nbsp;루체른&nbsp;</li>
						<li>&nbsp;동유럽/발칸&nbsp;</li>
						<li>&nbsp;바르셀로나&nbsp;</li>
						<li>&nbsp;리스본&nbsp;</li>
						<li>&nbsp;부다페스트&nbsp;</li>
						<li>&nbsp;마드리드&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">동남아</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li>&nbsp;방콕&nbsp;</li>
						<li>&nbsp;파타야&nbsp;</li>
						<li>&nbsp;푸켓&nbsp;</li>
						<li>&nbsp;싱가포르&nbsp;</li>
						<li>&nbsp;코타키나발루&nbsp;</li>
						<li>&nbsp;쿠알라룸푸르&nbsp;</li>
						<li>&nbsp;발리&nbsp;</li>
						<li>&nbsp;보라카이&nbsp;</li>
						<li>&nbsp;팔라완&nbsp;</li>
						<li>&nbsp;라오스&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">일본</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li>&nbsp;오사카&nbsp;</li>
						<li>&nbsp;동경&nbsp;</li>
						<li>&nbsp;후쿠오카&nbsp;</li>
						<li>&nbsp;삿포로&nbsp;</li>
						<li>&nbsp;오키나와&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">홍콩/대만</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li>&nbsp;홍콩&nbsp;</li>
						<li>&nbsp;마카오&nbsp;</li>
						<li>&nbsp;가오슝&nbsp;</li>
						<li>&nbsp;타이베이&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">미주</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li>&nbsp;미서부&nbsp;</li>
						<li>&nbsp;로스앤젤레스&nbsp;</li>
						<li>&nbsp;샌프란시스코&nbsp;</li>
						<li>&nbsp;미동부&nbsp;</li>
						<li>&nbsp;뉴욕&nbsp;</li>
						<li>&nbsp;워싱턴&nbsp;</li>
						<li>&nbsp;하와이&nbsp;</li>
						<li>&nbsp;밴쿠버&nbsp;</li>
						<li>&nbsp;밴프&nbsp;</li>
						<li>&nbsp;중남미&nbsp;</li>
					</ul></td>
			</tr>
			<tr>
				<td class="country">국내</td>
				<td style="padding-left: 10px; border-bottom: 1.5px solid #CFCFCF;"><ul>
						<li>&nbsp;제주&nbsp;</li>
						<li>&nbsp;백령도&nbsp;</li>
						<li>&nbsp;홍도&nbsp;</li>
						<li>&nbsp;흑산도&nbsp;</li>
						<li>&nbsp;울릉도&nbsp;</li>
						<li>&nbsp;여수&nbsp;</li>

					</ul></td>
			</tr>

		</table>
	</div>
</body>
</html>