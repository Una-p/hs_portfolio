<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<!--
<< name 목록 >>
프로젝트 이름 : pname
프로젝트 소개 : intro
프로젝트 기간
    시작일 : start
    종료일 : end
프로젝트 분야 : category
모집 팀원 역할 : part 
업무관련 기술태그 : skill
주요 활동 지역 : district
팀장 연락처 : phone
팀장 이메일 : email
<< id 목록 >>
category_study
category_contest
-->

<head>
<meta charset="UTF-8">
<title>TeamRegi</title>

<!-- JQuery -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <!--  달력 -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



</head>
<style>
*{
	margin:0;
	padding:0;
}
#main-div {
	position:fixed; 
	left:250px;
	height:100%;
	width: 1000px;
	border: solid;
	margin: 20px;
	 overflow-y:scroll; 
}
form>div {
	margin: 20px;
	font-size: 25px;
}
h1 {
	background-color: aquamarine;
}
.form-control {
	font-size: 20px;
}
#pname {
	width: 480px;
}
.day, .leader {
	/* 시작일 / 종료일, 팀장 전화번호 / 이메일 라벨 */
	font-size: 15px;
}
#start, #end {
	width: 6em;
	font-size: 20px;
}
#label_email {
	margin-right: 8px;
}
#district {
	width: 19em;
	font-size: 20px;
}
.text_part {
	width: 200px;
}
.part {
	width: 420px;
}
.skill {
	width: 240px;
	display: inline-block;
}
#part_1 {
	background-color: goldenrod;
}
</style>

<body>
	<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>

	<div id="main-div">
		<form action="project-register" method="post">
			<div>
				<h1>팀 등록</h1>
				<br>
				<div class="form-group form-inline" id="div-pname">
					<label for="pname" class="label label-default">프로젝트 이름</label> <br>
					<input type="text" class="form-control" id="pname" name="pname"
						placeholder="HexaCore 25자 내로 작성" maxlength="25" required>
				</div>
				<br>
				<div id="div_intro">
					<label for="intro" class="label label-default" id="label_intro">프로젝트
						소개</label> <br>
					<textarea name="intro" id="intro" cols="50" rows="5"
						onkeyup="javascript:fnChkByte(this,'500')"></textarea>
					<span id="byteInfo">0</span>/500Byte
				</div>
				<br>
				<div>
					<label class="label label-default" id="label_project_date">프로젝트
						기간</label> <br>
					<div class="form-group form-inline">
						<label class="label label-info day">시작일</label> <input type="text"
							id="start" class="form-control" name="start"> ~ <label
							class="label label-info day">종료일</label> <input type="text"
							id="end" class="form-control" name="end">
					</div>
				</div>
				<br>
				<div class="form-group form-inline" id="div_category">
					<label for="info_category" class="label label-default">프로젝트
						분야</label> <br>
					<div class="input-group ">
						<span class="input-group-addon"> <input type="radio"
							name="category" value="스터디"
							onclick="this.form.team_etc.disabled=true" aria-label="">
						</span> <input type="text" name="category" class="form-control"
							aria-label="" value="스터디" disabled="true">
					</div>
					<div class="input-group">
						<span class="input-group-addon"> <input type="radio"
							name="category" value="공모전"
							onclick="this.form.team_etc.disabled=true" aria-label="">
						</span> <input type="text" name="category" class="form-control"
							aria-label="" value="공모전" disabled="true">
					</div>
					<!-- category=etc & category_etc = 텍스트값 -->
					<div class="input-group">
						<span class="input-group-addon"> <input type="radio"
							name="category" value="etc"
							onclick="this.form.team_etc.disabled=false" aria-label="">
						</span> <input type="text" name="category" class="form-control"
							aria-label="" placeholder="기타" disabled="true">
					</div>
				</div>
				<br>
				<div>
					<label class="label label-default" id="label_part">모집 팀원 역할</label>
					<div>
						<input type="text" class="form-control part" maxlength="20"	id="part1" name="part1"> 
						<input type="text" class="form-control part" maxlength="20" id="part2" name="part2"> 
						<input type="text" class="form-control part" maxlength="20" id="part3" name="part3"> 
						<input type="text" class="form-control part" maxlength="20" id="part4" name="part4"> 
						<input type="text" class="form-control part" maxlength="20" id="part5" name="part5"> 
						<input type="text" class="form-control part" maxlength="20" id="part6" name="part6">
					</div>
				</div>
				<br>
				<div>
					<label for="skill" class="label label-default" id="label_skill">업무관련
						기술태그</label>
					<div>
						<input type="text" class="form-control skill" maxlength="10" name="skill_1">
						<input type="text" class="form-control skill" maxlength="10" name="skill_2">
						<input type="text" class="form-control skill" maxlength="10" name="skill_3">
						<input type="text" class="form-control skill" maxlength="10" name="skill_4">
						<input type="text" class="form-control skill" maxlength="10" name="skill_5">
						<input type="text" class="form-control skill" maxlength="10" name="skill_6">
						<input type="text" class="form-control skill" maxlength="10" name="skill_7">
						<input type="text" class="form-control skill" maxlength="10" name="skill_8">
						<input type="text" class="form-control skill" maxlength="10" name="skill_9">
						<input type="text" class="form-control skill" maxlength="10" name="skill_10">
					</div>
				</div>
				<br>
				<div class="form-group">
					<label class="label label-default" id="label-district">주요
						활동 지역</label> <br> <select name="district">
						<option value="전국" selected="selected">전국</option>
						<option value="서울">서울</option>
						<option value="인천">인천</option>
						<optgroup label="경기">
							<option value="안양">안양</option>
							<option value="부천">부천</option>
						</optgroup>
					</select>
				</div>
				<br>
				<div class="form-group">
					<label class="label label-default">팀장 연락처</label> <br>
					<div class="form-inline">
						<label for="phone" class="label label-info leader"
							id="label_phone">phone</label> <input type="tel"
							class="form-control" id="phone" value="01020020290">
					</div>
					<div class="form-inline">
						<label for="email" class="label label-info leader"
							id="label_email">email</label> <input type="email"
							class="form-control" id="email" value="m40030811@gmail.com">
					</div>
				</div>
				<br>
				<div>
					<input type="submit" class="btn btn-primary btn-lg" value="등록하기">
				</div>
			</div>
		</form>
	</div>
	<script>
        /* 달력 */
        
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
    </script>
</body>

</html>