<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Let's Team! Tip & Tech</title>
<style>
*{
	margin:0;
	padding:0;
}
	#ttRegister{
        position: fixed;
        width: 1000px;
        height: 100%;
        border: 1px solid black;
        left: 260px;
    }
    #ttAction{
        float: right;
    }
</style>
</head>
<body>
		<jsp:include page="../signup/include.jsp" flush="false"></jsp:include>
		
	<div id="ttRegister">
    <form method="post" action="ttRegister">
      <div class="form-group">
        <label for="exampleInputEmail1">제목</label>
        
        <input type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="내용을 입력하세요">
      </div>
      <textarea class="form-control" rows="38" name="content"></textarea>
      <br/>
      <input type="hidden" name="writer_uid" value="${login_id}">
      <button  id="ttAction" type="submit" class="btn btn-default">글 올리기</button>
    </form>
           
</div> <!--end ttRegister-->
	<script>
		$(document).ready(function(){
			
		});
	</script>
</body>
</html>