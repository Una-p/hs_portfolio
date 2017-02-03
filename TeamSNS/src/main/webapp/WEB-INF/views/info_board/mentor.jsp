<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! Information</title>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 달력 -->
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<!--
    << name 목록>>
    글번호 : ionfo_board_bno
    글제목 : info_title
    카테고리 : info_category
    URL : info_url
    작성자 : info_id
    마감일자 : info_end
    << 라디오 value >>
    창업교육
    멘토링
    행사
    -->
<style>
* {
	font-size: 1.3rem;
}

@media ( min-width : 768px) {
	.content {
		padding: 40px;
	}
}

@media ( max-width : 767px) {
	.content {
		padding: 20px;
	}
}

#btn {
	margin: 10px;
	display: flex;
	flex-direction: row-reverse;
}

/* 달력크기 */
.ui-datepicker {
	width: 300px;
}

table {
	width: 100%;
}

table, td, tr, th {
	border: 1px solid;
	text-align: center;
}

#info_board_bno {
	width: 10%;
}

#info_title {
	width: 50%;
}

#info_category {
	width: 15%;
}

#info_id {
	width: 15%;
}

#info_end {
	width: 10%;
}

.title, .id, .end {
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.table_th {
	text-align: center;
}
/* 모달창 시작 */
#div-main>div {
	margin: 20px;
	font-size: 25px;
}

#div_info_register_main {
	width: 500px;
	border: solid;
	margin: 20px;
}

#btnReset {
	display: inline-block;
}

.form-control {
	font-size: 20px;
}

#info_register_end {
	width: 200px;
}

#info_register_title, #info_register_url {
	width: 350px;
}

#info_register_category {
	width: 8em;
}

.list_li {
	display: inline-block;
}

.list_ul {
	width: 100%;
	text-align: center;
}

.list_ul>li>a {
	font-size: 20px;
}
/* 모달창 끝 */
</style>

<body>
	<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header>
					<h1>정보 리스트</h1>
					<!-- 버튼 -->
					<div id="btn">
						<button type="button" class="btn btn-primary btn-lg"
							data-toggle="modal" data-target="#info_register_modal"
							id="btnReset">새글 작성</button>
					</div>
				</header>
				<div id="main-section">
					<table class="table table-bordered ">
						<tr>
							<th class="table_th">글번호</th>
							<th class="table_th">글제목</th>
							<th class="table_th">카테고리</th>
							<th class="table_th">정보제공</th>
							<th class="table_th">마감일자</th>
						</tr>
						<c:forEach var="vo" items="${mentorList }">
							<tr>
								<td id="info_board_bno">${vo.bno }</td>
								<td class="title" id="info_title"><a href="${vo.url }">${vo.title }</a></td>
								<td id="info_category">${vo.category }</td>
								<td class="id" id="info_id">${vo.user_id }</td>
								<td class="end" id="info_end"><fmt:formatDate
										value="${vo.end }" pattern="yy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</table>
					<ul class="page-links list_ul pager">
						<c:if test="${pageMaker.hasPrev }">
							<li class="list_li"><a href="${pageMaker.startPageNum -1 }">이전</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPageNum }"
							end="${pageMaker.endPageNum }" var="num">
							<li class="list_li"><a href="${num }">${num }</a></li>

						</c:forEach>
						<c:if test="${pageMaker.hasNext }">
							<li class="list_li"><a href="${pageMaker.endPageNum + 1 }">다음</a></li>
						</c:if>
					</ul>
					<form id="pageForm">
						<input type="hidden" name="page"
							value="${pageMaker.criteria.page }" />
					</form>
					<!--<div> 현재 페이지에서 이동
            <input type="button" value="parkDex" name="parkDexBtn" onclick="location.href='http://parkDex.tistory.com'">
            <br/>
            <br/> 새 창에서 이동
            <input type="button" value="parkDex2" name="parkDex2Btn" onclick="window.open('http://parkDex.tistory.com')"> </div>-->
					<!-- 모달 시작 -->
					<div>

						<!-- 모달 팝업 -->
						<div class="modal fade" id="info_register_modal" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">
											<span aria-hidden="true">×</span><span class="sr-only">Close</span>
										</button>
										<h4 class="modal-title" id="myModalLabel"></h4>
									</div>
									<div class="modal-body">
										<!-- 모달안에 들어갈 내용 -->
										<div id="div-main">
											<form action="">
												<div>
													<div>
														<h1>정부 정보 등록</h1>
													</div>
													<br>
													<div class="form-group form-inline"
														id="div_info_board_title">
														<label for="info_register_title"
															class="label label-default">제목</label> <br> <input
															type="text" class="form-control" id="info_register_title"
															name="info_board_title" placeholder="20글자" required
															maxlength="20">
													</div>
													<div class="form-group form-inline" id="div_info_category">
														<label for="info_category" class="label label-default">카테고리</label>
														<br> <label class="radio-inline"> <input
															type="radio" name="info_category"
															id="category_register_edu" value="창업교육"> 창업교육
														</label> <label class="radio-inline"> <input type="radio"
															name="info_category" id="category_register_mentor"
															value="멘토링"> 멘토링
														</label> <label class="radio-inline"> <input type="radio"
															name="info_category" id="category_register_event"
															value="행사"> 행사
														</label>
													</div>
													<div class="form-group form-inline" id="div_info_url">
														<label for="info_register_url" class="label label-default">URL</label>
														<br> <input type="url" class="form-control"
															id="info_register_url" name="info_url"
															placeholder="http:// 반드시 넣을것!!" required>
													</div>
													<div class="form-group form-inline" id="div_info_id">
														<label for="info_register_id" class="label label-default">정보제공</label>
														<br> <input type="text" class="form-control"
															id="info_register_id" name="info_id" placeholder="12글자"
															required maxlength="12">
													</div>
													<!-- 마감일자의 저장방식 << 1) 날짜선택 : info_end=20161201 >> << 2) 상시모집 : info_end_every=상시모집 >> -->
													<div class="form-group form-inline" id="div_info_end">
														<label for="info_end" class="label label-default">마감일자</label>
														<br> <input type="date" class="form-control"
															id="info_register_end" name="info_end"> <br>
														<input type="checkbox" id="info_end_every"
															name="info_end_every" value="상시모집"
															onclick="checkDisable()"> <label
															for="info_end_every">상시모집</label>
													</div>
													<br> <input type="submit"
														class="btn btn-primary btn-lg" value="등록 하기">
												</div>
											</form>
										</div>
									</div>
									<!-- 모달 내용 끝 -->
								</div>
							</div>
						</div>
					</div>
					<footer>footer</footer>
				</div>
				<!-- end main-section -->
			</section>
		</div>
		<!-- end main-index -->
		<aside>날씨</aside>
	</div>
	<script>
		$(document)
				.ready(
						function() {
							var frm = $("#pageForm");

							$(".page-links li a").click(function() {
								event.preventDefault();
								var targetPage = $(this).attr("href");
								frm.find("[name='page']").val(targetPage);
								frm.attr("action", "mentor");
								frm.attr("method", "get");
								frm.submit();
							});

							/* 폼 초기화 */
							$("#btnReset").click(function() {
								$("form").each(function() {
									this.reset();
								});
							});
							/* 글자길이 체크 */
							$('#info_register_title, #info_register_id')
									.keyup(
											function() {
												if ($(this).val().length > $(
														this).attr('maxlength')) {
													alert('제한길이 초과');
													$(this)
															.val(
																	$(this)
																			.val()
																			.substr(
																					0,
																					$(
																							this)
																							.attr(
																									'maxlength')));
												}
											});

						});
		/* 상시모집 체크박스 */
		function checkDisable() {
			var info_end_every = document.getElementById('info_end_every');
			var info_register_end = document.getElementById('info_register_end');
			if (info_end_every.checked == true) {
				info_end.disabled = false;
				info_register_end.disabled = true;
			} else {
				info_end.disabled = true;
				info_register_end.disabled = false;
			}
		}
	</script>
</body>