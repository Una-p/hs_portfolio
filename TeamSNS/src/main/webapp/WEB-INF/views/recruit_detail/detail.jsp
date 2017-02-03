<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recruit Detail</title>
</head>
<body>
============== 프로젝트 모집글 상세보기 프로토 화면 ==============
<hr/><hr/>

	프로젝트 이름 : ${dto.project.pname } <br/>
	프로젝트 카테고리 : ${dto.project.category } <br/>
	프로젝트 시작일 : <fmt:formatDate value="${dto.project.start }" pattern="yy-MM-dd" /> <br/>
	프로젝트 종료일 : <fmt:formatDate value="${dto.project.end }" pattern="yy-MM-dd"/> <br/>
	프로젝트 소개 : ${dto.project.intro } <br/>
	행정구역 : ${dto.project.district } <br/>
	지도 : ${dto.project.meeting_area }<br/>
	<hr/>
	모집글 제목 : ${dto.recruit.title } <br/> 
	모집 시작일 : <fmt:formatDate value="${dto.recruit.start }" pattern="yy-MM-dd" /> <br/>
	모집 마감일 : <fmt:formatDate value="${dto.recruit.end }" pattern="yy-MM-dd" /> <br/>
	<hr/>
	요구 기술1 : ${dto.skills.skill_1 } <br/>
	요구 기술2 : ${dto.skills.skill_2 } <br/>
	요구 기술3 : ${dto.skills.skill_3 } <br/>
	요구 기술4 : ${dto.skills.skill_4 } <br/>
	요구 기술5 : ${dto.skills.skill_5 } <br/>
	요구 기술6 : ${dto.skills.skill_6 } <br/>
	요구 기술7 : ${dto.skills.skill_7 } <br/>
	요구 기술8 : ${dto.skills.skill_8 } <br/>
	요구 기술9 : ${dto.skills.skill_9 } <br/>
	요구 기술10 : ${dto.skills.skill_10 } <br/>
	<hr/>
	모집 업무분야
	<c:forEach var="parts" items="${dto.parts }">
	PARTS : ${parts.part } <br/>
	</c:forEach>
	
	<br/>
	<br/>
	<hr/>
	==== Aside ====<br/>
	팀장 이름 : ${dto.team_leader.name} (닉네임 : ${dto.team_leader.nickname })
	|| 카톡ID : ${dto.team_leader.kkoid } || EMAIL : ${dto.team_leader.email }
	|| 핸드폰 : ${dto.team_leader.phone }
	
</body>
</html>