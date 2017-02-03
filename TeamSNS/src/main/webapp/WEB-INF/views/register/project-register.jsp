<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Let's Team! Project Register</title>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 달력 -->
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 달력 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style>
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

#main-section {
	width: 100%;
}

form>div {
	margin: 20px;
	font-size: 25px;
}

.form-control {
	font-size: 20px;
}

#team_name {
	width: 100%;
}

.day, .leader {
	/* 시작일 / 종료일, 팀장 전화번호 / 이메일 라벨  / 카카오톡 */
	font-size: 15px;
}

#project_start, #project_end, #project_recruit_start,
	#project_recruit_end {
	width: 12em;
	font-size: 20px;
}

#label_user_email {
	margin-right: 8px;
}

#team_area {
	width: 19em;
	font-size: 20px;
}

.team_part {
	width: 420px;
}

.required_skill {
	width: 240px;
	display: inline-block;
}

#team_part_1 {
	background-color: firebrick;
}

.category_type1 {
	width: 150px;
}
</style>

<body>
	<div id="container">
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		<div id="main-index">
			<section class="content">
				<header>
					<h1>프로젝트 등록</h1>
				</header>

				<form action="project-register" method="post">
					<div id="main-section">
						<div class="form-group form-inline" id="div-team-name">
							<label for="team_name" class="label label-default"> 이름</label> <br>
							<input type="text" class="form-control" id="team_name"
								name="pname" placeholder="Hexa_Core 25자 내로 작성" maxlength="25"
								required>
						</div>
						<br> <br>
						<div class="form-group form-inline" id="div_team_category">
							<label for="info_category" class="label label-default">프로젝트
								분야</label> <br>
							<div class="input-group category_type1">
								<span class="input-group-addon"> <input type="radio"
									name="category" value="스터디" onclick="category_etc_true()"
									aria-label="">
								</span> <input type="text" class="form-control" aria-label=""
									value="스터디" disabled="true">
							</div>
							<div class="input-group category_type1">
								<span class="input-group-addon"> <input type="radio"
									name="category" value="공모전" onclick="category_etc_true()"
									aria-label="">
								</span> <input type="text" class="form-control" aria-label=""
									value="공모전" disabled="true">
							</div>
							<!-- team_category=etc & team_category_etc = 텍스트값 -->
							<div class="input-group">
								<span class="input-group-addon"> <input type="radio"
									name="category" value="etc" onclick="category_etc_false()"
									aria-label="">
								</span> <input type="text" name="category_etc"
									class="form-control category_type2" aria-label=""
									placeholder="기타" id="team_category_etc" disabled="true">
							</div>

						</div>
						<!-- team_category=etc & team_category_etc = 텍스트값 -->
						<div class="input-group">
							<span class="input-group-addon"> <input id="btnetc"
								type="radio" name="category" value=""
								onclick="category_etc_false()" aria-label="">
							</span> <input type="text" name="category_etc"
								class="form-control category_type2" aria-label=""
								placeholder="기타" id="team_category_etc" maxlength="8">
						</div>

						<br>
						<div id="div_team_intro">
							<label for="team_intro" class="label label-default"
								id="label_team_intro">프로젝트 소개</label> <br>
							<textarea name="intro" id="team_intro" cols="50" rows="5"
								onkeyup="javascript:fnChkByte(this,'500')"></textarea>
							<span id="byteInfo">0</span>/500Byte
						</div>
						<div>
							<label class="label label-default" id="label_project_date">프로젝트
								기간</label>
							<div class="form-group form-inline">
								<label class="label label-info day">시작일</label> <input
									type="date" id="project_start" class="form-control datepicker"
									name="pstart"> ~ <label class="label label-info day">종료일</label>
								<input type="date" id="project_end"
									class="form-control datepicker" name="pend">
							</div>
						</div>
						<br>
						<hr style="border: solid 1px black;">
						<div>
							<div class="form-group form-inline" id="div_recruit_name">
								<label for="team_name" class="label label-default">모집글
									제목</label> <br> <input type="text" class="form-control"
									id="team_recruit_name" name="title"
									placeholder="Hexa_Core 25자 내로 작성" maxlength="25">
							</div>
							<br> <label class="label label-default"
								id="label_project_recruit_date">모집 기간</label> <br>
							<div class="form-group form-inline">
								<label class="label label-info day">시작일</label> <input
									type="date" id="project_recruit_start"
									class="form-control datepicker" name="rcstart"> ~ <label
									class="label label-info day">종료일</label> <input type="date"
									id="project_recruit_end" class="form-control datepicker"
									name="rcend">
							</div>
						</div>
						<br>
						<div>
							<label class="label label-default" id="label_team_part">모집
								팀원 역할</label>
							<div>
								<input type="text" class="form-control team_part" maxlength="20"
									name="part1" id="team_part_1" placeholder="팀장 역할" required>
								<input type="text" class="form-control team_part" maxlength="20"
									name="part2"> <input type="text"
									class="form-control team_part" maxlength="20" name="part3">
								<input type="text" class="form-control team_part" maxlength="20"
									name="part4"> <input type="text"
									class="form-control team_part" maxlength="20" name="part5">
								<input type="text" class="form-control team_part" maxlength="20"
									name="part6">
							</div>
						</div>
						<br>
						<div>
							<label for="required_skill" class="label label-default"
								id="label_required_skill">업무관련 기술태그</label>
							<div>
								<input type="text" class="form-control required_skill"
									maxlength="10" name="skill_1"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_2"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_3"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_4"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_5"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_6"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_7"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_8"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_9"> <input type="text"
									class="form-control required_skill" maxlength="10"
									name="skill_10">
							</div>
						</div>
						<br>
						<div class="form-group">
							<label class="label label-default" id="label-team-area">주요
								활동 지역</label> <br> <select name="district">
								<option value="서울특별시">서울시</option>
								<option value="부산광역시">부산시</option>
								<option value="대구광역시">대구시</option>
								<option value="인천광역시">인천시</option>
								<option value="광주광역시">광주시</option>
								<option value="대전광역시">대전시</option>
								<option value="울산광역시">울산시</option>
								<option value="제주특별자치도">제주도</option>
								<option value="경기도">경기도</option>
								<optgroup label="충청도">
									<option value="충청북도">충청북도</option>
									<option value="충청남도">충청남도</option>
								</optgroup>
								<optgroup label="전라도">
									<option value="전라북도">충청북도</option>
									<option value="전라남도">충청남도</option>
								</optgroup>
								<optgroup label="경상도">
									<option value="경상북도">경상북도</option>
									<option value="경상남도">경상남도</option>
								</optgroup>
								<option value="해외">해외</option>
							</select>
						</div>
						<br>
						<div class="form-group">
							<label class="label label-default">팀장 연락처</label> <br>
							<div class="form-inline">
								<label for="user_number" class="label label-info leader"
									id="label_user_number">phone</label> <input type="tel"
									class="form-control" id="user_number" value="${userVO.phone}"
									readonly>
							</div>
							<div class="form-inline">
								<label for="user_email" class="label label-info leader"
									id="label_user_email">email</label> <input type="email"
									class="form-control" id="user_email" value="${userVO.email }"
									readonly>
							</div>
							<div class="form-inline">
								<label for="user_kkoid" class="label label-info leader"
									id="label_user_kkoid">카카오톡 ID</label> <input type="text"
									class="form-control" id="user_kkoid" value="${userVO.kkoid }"
									readonly>
							</div>
						</div>
						<br>
						<div>
							<input id="btnregister" type="submit"
								class="btn btn-primary btn-lg" value="등록하기">
						</div>
					</div><!-- end main-section -->
				</form>


				<footer>footer</footer>


			</section>
			
		</div>
		<aside>날씨</aside>
	</div>
	<script>

   /* 글자수 체크2 */
    function fnChkByte(obj, maxByte) {
        var str = obj.value;
        var str_len = str.length;
        var rbyte = 0;
        var rlen = 0;
        var one_char = "";
        var str2 = "";
        for (var i = 0; i < str_len; i++) {
            one_char = str.charAt(i);
            if (escape(one_char).length > 4) {
                rbyte += 2; //한글2Byte
            }
            else {
                rbyte++; //영문 등 나머지 1Byte
            }
            if (rbyte <= maxByte) {
                rlen = i + 1; //return할 문자열 갯수
            }
        }
        if (rbyte > maxByte) {
            alert("한글 " + (maxByte / 2) + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
            str2 = str.substr(0, rlen); //문자열 자르기
            obj.value = str2;
            fnChkByte(obj, maxByte);
        }
        else {
            document.getElementById('byteInfo').innerText = rbyte;
        }
    }
        function category_etc_true(){
            var team_category_etc = document.getElementById('team_category_etc');
            team_category_etc.disabled = true;
        }
        function category_etc_false(){
            var team_category_etc = document.getElementById('team_category_etc');
            team_category_etc.disabled = false;
        }
        /* 
        window.onload = function(){
           var team_category_etc = document.getElementById('team_category_etc');
            team_category_etc.disabled = "true";
           var team_category_etc = document.getElementById('team_category_etc');
            team_category_etc.disabled = "false";
        }  */
      
        $(document).ready(function(){
           
           $('#btnregister').click(function(){
              var etc = $('#team_category_etc').val();
               
               $('#btnetc').val(etc);
           });
           
        });

    </script>
</body>

</html>