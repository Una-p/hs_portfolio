<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >
<html>
<head>
    <meta charset="UTF-8">
    <title>Let's Team! Project Management</title>

<link rel="stylesheet" href="../resources/realcss/sidemenu.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/realcss/sidemenu.css"/>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>    
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <style>
    	/* 민지가 추가 */
    	@media ( min-width : 768px) {
			.content {
			padding: 40px;
			}
		}
	
		@media ( max-width : 767px) {
			.content {
			padding: 20px;
			}
			.table{
				font-size: 12px;
			}
		}
		#main-section {
			width: 100%;
			display: flex;
			flex-direction: column;
		}
		
    	/* 민지가 추가 */
        .projectOne{
        	cursor: pointer;
        }
        #projectInfo{
            position: relative;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        .projectList{
        	/* 죄송하지만 주석좀 치겠습니다...(__) */
            /* position: fixed;
            left: 250px; */
            width: 100%;
            height: 500px; 
            
            margin: 20px 0;
        }
        
        .myApplyList, .myCandidateList {
        	 margin: 20px 0;
        }
        .table{
        	border: 1px solid darkgray;
        }
        	
        
        #project_start{
            width: 150px;
            margin-right: 0;
            
            position: relative;
        }
        #start_pro{
            margin-left: 25px;
        }
        
        #project_end{
            width: 150px;
            position: relative;
            left:0
        }
        #pro_start{
            float: left;
            width: 400px;
            
        }
        #pro_end{
            margin-left: 25px; 
        }
        #project_start{
            left: 0;
        }
        #project_recruit_start{
            width: 150px;
            
        }
        #project_recruit_end{
            width: 150px;
        }
        #label_project_date{
            float: left;
        }
        #label_project_recruit_date{
            margin-left: 400px;
            margin-right: 0;
        }
        #prostart-label{
            left: -50px;
        }
        #team_area{
            width: 200px;
        }
   
    </style>
</head>

<body>
<div id="container">
	<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
	<div id="main-index">
	<section class="content">
		<header>
			<h1>Project Management</h1>
		</header>
		
		<div id="main-section">
		<!--여기서 부터 오빠코드입니다!!!!!!!!!! -->
			<div class="projectList">
				<h1>작성한 프로젝트</h1>
				<table class="table table-hover table-borerd">
					<tr>
					<td>카테고리</td>
					<td>프로젝트 이름</td>
					<td>프로젝트 소개</td>
					<td>시작일</td>
					<td>종료일</td>
					</tr>

					<c:forEach var ="vo" items="${projectList}">
					<tr id="${vo.rbno}" data-target="#myprojectModal" data-toggle="modal" class="projectOne">
					<td>${vo.category}</td>
					<td>${vo.pname}</td>
					<td>${vo.intro}</td>
					<td><fmt:formatDate value="${vo.start }" pattern="yy-MM-dd" /></td>
					<td><fmt:formatDate value="${vo.end }" pattern="yy-MM-dd" /></td>
					</tr>
					</c:forEach>
				</table>
				<br/><br/>
				<!-- 지원자 관리 :applicant -->
				<h1>지원한 프로젝트</h1>
				<table class="table table-hover table-borerd">
					<tr>
						<th>프로젝트 이름</th>
						<th>지원 업무</th>
						<th>지원 코멘트</th>
						<th>신청일</th>
						<th>지원 상태</th> <!-- 1: 신청중, 2: 신청수락, 3: 거절 -->
						<th></th>
					</tr>
					
			 		<c:forEach var="apply" items="${applyList }">
					<tr>
						<td>${apply.pname }</td>
						<td>${apply.part }</td>
						<td>${apply.comment }</td>
						<td><fmt:formatDate value="${apply.apply_regdate }" pattern="yy-MM-dd" /></td>
						
						<!-- 1: 신청중, 2: 수락, 3: 거절 -->
						<c:if test="${apply.state eq 1 }">
							<td>신청중</td>
						</c:if>
						<c:if test="${apply.state eq 2 }">
							<td>수락됨</td>
						</c:if>
						<c:if test="${apply.state eq 3 }">
							<td>거절ㅠㅠ</td>
						</c:if>
						
						<td><a href="apply-cancel">신청취소</a></td>
					</tr>
					</c:forEach>
				</table>
				<br><br>
				
				<!-- pid, part_pk, pname, part, user_id, comment, apply_regdate, state -->
					<h1>지원자 목록</h1>
					<table class="table table-hover table-borerd">
						<tr>
							<th hidden="hidden">파트PK</th>
							<th>프로젝트 이름</th>
							<th>지원 업무</th>
							<th>지원자 아이디</th>
							<th>지원자 코멘트</th>
							<th>신청일</th>
							<th></th>
							<th></th>
						</tr>
						
						
				 		<c:forEach var="cc" items="${candidate }">
				 		<c:if test="${cc.state eq 1 }">
						<tr>
							<td class="hs_candi_partpk" hidden="hidden">${cc.part_pk }</td>
							<td class="hs_candi_pname">${cc.pname }</td>
							<td class="hs_candi_part">${cc.part }</td>
							<td class="hs_candi_userid">${cc.user_id }</td>
							<td class="hs_candi_comment">${cc.comment }</td>
							<td><fmt:formatDate value="${cc.apply_regdate }" pattern="yy-MM-dd" /></td>
							<td><button class="btnApplyAccept">수락</button></td>
							<td><button class="btnApplyReject">거절</button></td>
						</tr>
						</c:if>
						</c:forEach>
					</table>
			</div>
			
			<!-- 모달 팝업 --> <!-- 엄청길어서 쓸때  줄여서 사용하시길 -->
			<div class="modal fade bs-example-modal-lg" id="myprojectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
				<div class="modal-dialog modal-lg">
				<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">팀관리</h4>
				</div>
				
				<div class="modal-body">
				<label class="label label-default">프로젝트 제목</label>
				<input class="form-control" type="text" id="team_info_name" name="title" value="${dto.recruit.title }"/>
				<label class="label label-default">프로젝트 이름</label>
				<input class="form-control" type="text" id="team_name" name="pname"  value="${dto.project.pname }"/>
				<label class="label label-default">카테고리</label>
				<input class="form-control" type="text" id="team_category" name="category" value="${dto.project.category }"/>
				<label for="team_intro" class="label label-default" id="label_team_intro">프로젝트 소개</label>
				<textarea class="form-control" id="team_intro" cols="50" rows="5" name="intro">${dto.project.intro }</textarea>             
				<label class="label label-default" id="label_project_date">프로젝트 기간</label>
				<label class="label label-default" id="label_project_recruit_date">모집 기간</label>
				<br/>
				<div id="pro_start">
				<label id="start_pro" class="label label-info day">시작일</label>
				<input type="date" id="project_start" class="form-control" name="project_start" value="">
				<label  id="pro_end" class="label label-info day">종료일</label>
				<input type="date" id="project_end" class="form-control" name="end" value="">
				</div>
				<div>
				<label id="prostart-label" class="label label-info day">시작일</label>
				<input type="text" id="project_recruit_start" class="form-control datepicker" value = ""> 
				<label class="label label-info day">종료일</label>
				<input type="text" id="project_recruit_end" class="form-control datepicker" value=""/>
				</div>
				<label class="label label-default">활동 구역</label>
				<input class="form-control" type="text" name="district" value="${dto.project.district }" id="team_area">
				<label class="label label-default" id="label_team_part">모집 팀원 역할</label>
				<div id="partList">
					<!-- <input type="text" class="form-control team_part" maxlength="20" id="partlist" name="part" value="ㅁㄴㅇㅁㄴㅇ"> -->
				</div> <br/>
				<label for="required_skill" class="label label-default" id="label_required_skill">업무관련 기술태그</label>
				<div>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill" name="required_skill_1"
					value="${dto.skills.skill_1 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_2" name="required_skill_2"
					value="${dto.skills.skill_2 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_3" name="required_skill_3"
					value="${dto.skills.skill_3 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_4" name="required_skill_4"
					value="${dto.skills.skill_4 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_5" name="required_skill_5"
					value="${dto.skills.skill_5 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_6" name="required_skill_6"
					value="${dto.skills.skill_6 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_7" name="required_skill_7"
					value="${dto.skills.skill_7 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_8" name="required_skill_8"
					value="${dto.skills.skill_8 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_9" name="required_skill_9"
					value="${dto.skills.skill_9 }"/>
				<input type="text" class="form-control required_skill" maxlength="10" id="required_skill_10" name="required_skill_10"
					value="${dto.skills.skill_10 }"/>
				<input id="updaterbno" type="hidden" value="${vo.rbno}">
				</div>
				</div>                
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					<button  id="udpate-project-info"type="button" data-dismiss="modal" class="btn btn-primary">수정</button>
				</div>
				</div>
			</div> <!-- end modal -->
			


</div><!-- end main-section -->
	</section>
	</div> <!--  end main index -->
<!-- 	<aside>날씨</aside> -->
</div> <!-- end container -->

<script>
/* 현선 자바스크립트 */
$(document).ready(function () {
	
	// 지원자 거절 버튼
	$('.btnApplyReject').click(function () {
/* 		 var temp = $(this).parent().parent().children('.part_1').text();
		 alert(temp); */
		var sel_partpk = $(this).parent().parent().children('.hs_candi_partpk').text();
		var sel_userid = $(this).parent().parent().children('.hs_candi_userid').text();
		console.log(sel_partpk);
		$.ajax({
			type: 'post',
			url: 'apply-reject',
			headers: {
				'Content-Type' : 'application/json',
				'X-HTTP-Method-Override' : 'POST'
			},
			data : JSON.stringify({
				part_pk: sel_partpk,
				user_id: sel_userid
			}),
			success: function(result) {
				if(result == 1) {
					alert('성공!');
				}
			}
		 });
		
	}); // 지원 거절 버튼 처리
	
	// 지원 수락 버튼 처리
	$('.btnApplyAccept').click(function() {
		
		var sel_partpk = $(this).parent().parent().children('.hs_candi_partpk').text();
		var sel_userid = $(this).parent().parent().children('.hs_candi_userid').text();
		console.log(sel_partpk);
		
		$.ajax({
			type: 'post',
			url: 'apply-accept',
			headers: {
				'Content-Type' : 'application/json',
				'X-HTTP-Method-Override' : 'POST'
			},
			data : JSON.stringify({
				part_pk: sel_partpk,
				user_id: sel_userid
			}),
			success: function(result) {
				if(result == 1) {
					alert('성공!');
				}
				
			}
		 });
		
	}); 
	
	
});

</script>

	<script>
/* 재훈형 자바스크립트 */                
        $(document).ready(function(){
        	$('.logout').click(function(){
				alert('${login_id}님 로그아웃 되셧습니다!');
				location = '/teamsns/signup/logout';
			});
        	
        	$('#project-register').click(function(){
				location = '/teamsns/register/project-register';
			});
        	
        	// $("tr") → $(".projectList tr") 로 수정 (hs)
        	$(".projectList tr").click(function(){
        		
    			var rbno = $(this).attr('id');
    			console.log(rbno);
    			
    			var url = '/teamsns/project/all/' + rbno;
    			
    			$.getJSON(url,callProject);
    			
    			function callProject(result){ /* 콜백함수^^ */
    				
    				var title = result.recruit.title;
    				var pname = result.project.pname;
    				var category = result.project.category;
    				var intro = result.project.intro;
    				
    				var district = result.project.district;
    				
    				var startPro = result.project.start;
    				console.log(startPro);
    				var startPro2 = new Date(startPro);
    				var startPro3 = startPro2.getFullYear()+"-"+startPro2.getMonth()+"-"+startPro2.getDate();
    				console.log(startPro3);
    				
    				var endPro = result.project.end;
    				var endPro2 = new Date(endPro);
    				var endPro3 = endPro2.getFullYear()+"-"+endPro2.getMonth()+"-"+endPro2.getDate();
    				
    				var startRec = result.recruit.rcstart;
    				var startRec2 = new Date(startRec);
    				var startRec3 = startRec2.getFullYear()+"-"+startRec2.getMonth()+"-"+startRec2.getDate();
    				
    				var endRec = result.recruit.rcstart
    				var endRec2 = new Date(endRec);
    				var endRec3 = endRec2.getFullYear()+"-"+endRec2.getMonth()+"-"+endRec2.getDate();
    				
    				var skill1 = result.skills.skill_1;
    				var skill2 = result.skills.skill_2;
    				var skill3 = result.skills.skill_3;
    				var skill4 = result.skills.skill_4;
    				var skill5 = result.skills.skill_5;
    				var skill6 = result.skills.skill_6;
    				var skill7 = result.skills.skill_7;
    				var skill8 = result.skills.skill_8;
    				var skill9 = result.skills.skill_9;
    				var skill10 = result.skills.skill_10;
    				
    				
    				console.log(result);
    				console.log("타이틀" + title);
    				console.log(result.parts[0].part);
    				
    				console.log(result.parts.length);
    				
    				 
    				 
    				
    				
    				$('#team_info_name').val(title);
    				$('#team_name').val(pname);
    				$('#team_category').val(category);
    				$('#team_intro').val(intro);
    				
    				$('#team_area').val(district);
    				
    				$('#project_start').val(startPro3);
    				$('#project_end').val(endPro3);
    				$('#project_recruit_start').val(startRec3);
    				$('#project_recruit_end').val(startRec3);
    				
    				
    				$('#required_skill').val(skill1);
    				$('#required_skill_2').val(skill2);
    				$('#required_skill_3').val(skill3);
    				$('#required_skill_4').val(skill4);
    				$('#required_skill_5').val(skill5);
    				$('#required_skill_6').val(skill6);
    				$('#required_skill_7').val(skill7);
    				$('#required_skill_8').val(skill8);
    				$('#required_skill_9').val(skill9);
    				$('#required_skill_10').val(skill10);
    				
    				$('#updaterbno').val(rbno);
    				
    				var list = '';
    				var i = result.parts.length;
    				var y = null;
    				$(result.parts).each(function(i){
    					list += '<input type="text" class="form-control team_part" maxlength="20" name="part" value="'+result.parts[i].part+'">'
    				});
    				
    				$('#partList').html(list);
    				console.log(list);
    			}; /* end callback */
    			
    			
        		
                /* $('#projectOne').attr('data-target','#myprojectModal');
                $('#projectOne').attr('data-toggle','modal'); */
                
            }); /* end click tr */
        	
            $('#udpate-project-info').click(function(){
            		var title = $('#team_info_name').val();		
            		var rbno = $("#updaterbno").val();
            		var rcstart = $("#project_recruit_start").val();
            		var rcend = $('#project_recruit_end').val();
            		
            		console.log(title, rbno, rcstart, rcend);
            		
            		var pname = $('#team_name').val();
            		var category = $('#team_category').val();
    				var start = $('#project_start').val();
    				var end = $('#project_end').val();
    				var intro = $('#team_intro').val();
    				var district = $('#team_area').val();
    				
    				console.log(pname, category, start, end , intro, district);
            		
    				var skill1 = $('#required_skill').val();
    				var skill2 = $('#required_skill_2').val();
    				var skill3 = $('#required_skill_3').val();
    				var skill4 = $('#required_skill_4').val();
    				var skill5 = $('#required_skill_5').val();
    				var skill6 = $('#required_skill_6').val();
    				var skill7 = $('#required_skill_7').val();
    				var skill8 = $('#required_skill_8').val();
    				var skill9 = $('#required_skill_9').val();
    				var skill10 = $('#required_skill_10').val();
    				
    				console.log(skill1,skill2,skill3,skill4,skill5,skill6,skill7,skill8,skill9,skill10);
    				
    				
    				$.ajax({
    	                  type: 'post',
    	                 url: '/teamsns/project/recruitProjectUpdate/'+ rbno,
    	                 headers: {
    	                    'Content-Type': 'application/json',
    	                    'X-Http-Method-Override': 'POST'
    	                 },
    	                 data: JSON.stringify({
    	                    
    	                    title: title,
    	                    rcstart: rcstart,
    	                    rcend: rcend
    	                    
    	                 }),
    	                 success: function(result){
    	                    if(result == '1'){
    	                       console.log("recruit 수정 성공!");
    	                       
    	                    }
    	                 }
    	               }); /* end ajax */
            	
				$.ajax({
            		
            		type:'post',
            	    url: '/teamsns/project/ProjectUpdate/'+ rbno,
            	    headers: {
        				'Content-Type': 'application/json',
        				'X-Http-Method-Override': 'POST'
        			},
        			data: JSON.stringify({
        				pname: pname,
        				category: category,
        				start: start,
        				end: end,
        				intro: intro,
        				district: district
        			}),
        			success: function(result2){
        				if(result2 == '1'){
        					console.log("project 수정 성공!");
        				}
        			}
            	}); /* end ajax */
            	
				$.ajax({
            		
            		type:'post',
            	    url: '/teamsns/project/skillUpdate/'+ rbno,
            	    headers: {
        				'Content-Type': 'application/json',
        				'X-Http-Method-Override': 'POST'
        			},
        			data: JSON.stringify({
        				skill_1: skill1,
        				skill_2: skill2,
        				skill_3: skill3,
        				skill_4: skill4,
        				skill_5: skill5,
        				skill_6: skill6,
        				skill_7: skill7,
        				skill_8: skill8,
        				skill_9: skill9,
        				skill_10: skill10,
        			}),
        			success: function(result3){
        				if(result3 == '1'){
        					console.log("project 수정 성공!");
        				}
        			}
            	}); /* end ajax */
            	
            	location = '/teamsns/project/projectInfo';
            	
            }); /* end click update */
        	
        	
        }); /* end document */
        
        
        
    </script>

</body>
</html>