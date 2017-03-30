# 안녕하세요, 신입 개발자 유현선입니다!
# 방문해주셔서 감사합니다! 

*****
#팀프로젝트: < 프로젝트 멤버모집 SNS 플랫폼 >
## 1. 프로젝트 소개
### 1.1. 프로젝트 개요
>1. 기존의 문제점<br/>
소규모 프로젝트를 위한 플랫폼의 부재<br/>
공모전, 포트폴리오 등을 위한 그룹구성이 어려움<br/>
원하는 능력을 갖춘 멤버를 구하기 어려움<br/>

>2. 제시 해결책<br/>
소규모 그룹을 만들 수 있는 플랫폼 제공 <br/>
개인별 역량을 확인 가능한 서비스 제공

### 1.2. 개발 및 배포환경
>Spring기반의 Web Application 개발<br/>
언어: Java, JavaScript, HTML, CSS<br/>
라이브러리: JQuery, JSTL, EL<br/>
프레임워크: Spring<br/>
SCM: GitHub	

>Amazon EC2 서비스를 이용 <br/>
AMI: Amazon Linux AMI <br/>
Web Server: NginX <br/>
WAS: Tomcat 9.0 <br/>
RDBMS: MySQL 5.6(Work Bench) <br/>

<!--
목표 및 현실
프로젝트 목표: Web Application 을 완성하는데 필요한 모든 절차를 경험 
이상: 미팅 → 문서화 → 개발 → 회의 → 버전관리 → 테스팅 → 디플로이
현실: 미팅 → 개발 → 회의 → 디플로이
-->

### 1.3 개발 기간 / 개발인원
> 2016.10.31 ~ 2016.12.13 / 5명<br/>
> (이후 자기 발전을 위해 팀원과 함께 유지보수 중)

<br/>
## 2. 담당 업무 상세

### 2.1 프로젝트 전체적인 DB 테이블 설계 및 관리 <br/>
![Alt text](/ERD.png)

- 18개의 테이블로 구성
- 크게 User, Project, Board 라는 주제에 맞춰 테이블을 세분화
- 서로 연관된 테이블끼리는 외래키를 지정해줘서 제약조건을 부여
- 실제 수업에서 배운것은 Oracle 이었으나 AWS 를 사용해보기 위해서 mySQL로 DB를 설계

### 2.2 Query / Backend
#### 1) 프로젝트 모집글 상세보기 화면 구현
> #####1. 프로젝트 모집글 리스트 화면에서 사용자가 클릭한 모집글의 번호를 받아와서 해당 프로젝트의 id(PK)를 찾아줌 
>> -해당 쿼리문을 사용한 mapper 파일 : [**recruit-detail-mapper.xml**](https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/resources/mappers/recruit-detail-mapper.xml) (line: 7~48)<br/>
>> include를 사용해서 각각의 테이블에서 selecr를 할때 pid를 찾는 문장의 중복 사용을 줄임
<pre>
<code>
SELECT pid FROM pentacore.recruit_project WHERE rbno = #{rbno }
</code>
</pre>


> #####2. 각각의 테이블에서 pid를 사용하여 해당 프로젝트 상세보기 화면에서 필요한 정보들을 불러옴
>> 상세보기 화면에서 필요한 정보들을 모든 테이블을 조인시켜서 하나의 쿼리문으로 작성하기엔 가져올 컬럼이 많아서 각각 테이블의 조회결과를 VO로 생성한 후 이 VO들로 이루어진 DTO를 RecruitDetailDAOImple에서 생성하여 Controller에 넘겨줌<br/>
> <a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/persistence/RecruitDetailDAOImple.java#L28">RecruitDetailDAOImple.java</a><br/>
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/controller/RecruitDetailController.java#L19">RecruitDetailController.java</a>

<pre>
<code>
SELECT * FROM pentacore.recruit_project WHERE rbno = #{rbno }

SELECT * FROM pentacore.project 
	WHERE pid = ( &lt;include refid="find_pid" /&gt; )

SELECT part.*, user.name
	FROM pentacore.manage_project_part AS part
	LEFT JOIN pentacore.user AS user ON user.uid = part.user_id
	WHERE part.pid = (&lt;include refid="find_pid" /&gt;)

SELECT * FROM pentacore.required_skill
	WHERE pid = ( &lt;include refid="find_pid" /&gt; )

SELECT * FROM pentacore.user
	WHERE uid = 
	(
	SELECT leader_uid FROM pentacore.project_leader
	WHERE pid = ( (&lt;include refid="find_pid" /&gt;) )
	)
</code>
</pre>

<br/>
#### 2) 모집글 상세 화면에서 해당 프로젝트에 지원하기 기능 구현
(해당 기능 모두 " 1) " 의 부속 기능이라 위에서 기제한 같은 파일 내에서 작성하였습니다. )
>#####1.모달로 구현된 상세보기 화면 하단에서 지원할 파트와 지원멘트를 입력하면 해당 데이터로 VO를 생성 후 중복검사를 실행함
<pre>
<code>
SELECT count(*)
	FROM pentacore.manage_recruit AS recruit
	LEFT JOIN pentacore.manage_project_part AS part
	ON part.part_pk = recruit.part_pk 
	WHERE part.pid = #{pid} AND recruit.user_id = #{user_id}
</code>
</pre>
<pre>
<code>
public int overlapTest1(ApplyProjectVO vo) {
	logger.info("중복검사 DAO");
	int overlapResult = sqlSession.selectOne(MAPPER + ".overlap_test1", vo);
	logger.info("result : "+overlapResult);
	return overlapResult;
}
</code>
</pre>
>#####2. 중복 검사를 통해 증명된 데이터를 지원관리DB에 입력(INSERT)
<pre>
<code>
INSERT INTO pentacore.manage_recruit (part_pk, user_id, comment) VALUE (#{part_pk}, #{user_id}, #{comment})
</code>
</pre>

#### 3) 마이페이지 기능 구현
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/persistence/MypageDAOImple.java">MypageDAOImple.java</a> <br/>
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/java/edu/penta/hyunsun/controller/MypageController.java">MypageController.java</a> <br/>
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/resources/mappers/mypage-mapper.xml">
mypage-mapper.xml</a><br/>
<a href="https://github.com/itosamto/hs_portfolio/blob/master/TeamSNS/src/main/resources/mappers/projectinfo-mapper.xml">projectinfo-mapper.xml</a>
>#####1. 회원정보 조회 및 수정 기능
>회원 가입시 작성한 회원 정보를 조회하고 일부 수정 가능한 정보들을 수정할수 있도록 구현했습니다.
>#####2. 본인이 작성한 글 목록 조회 기능
>본인이 작성한 글을 게시판 통합하여 전체 확인 가능하도록 구현했습니다.
<pre>
<code>
&lt;select id="my-board" resultType="edu.penta.hyunsun.domain.BoardVO"&gt;
(SELECT @bk := 'tt' AS bk, tt.bno, tt.title
FROM pentacore.tt_board AS tt WHERE writer_uid = #{uid}
ORDER BY bno DESC) 
UNION
(SELECT @bk := 'free' AS bk, free.bno, free.title
FROM pentacore.free_board AS free WHERE writer_uid = #{uid}
ORDER BY bno DESC)
&lt;/select&gt;
</code>
</pre>
>#####3. 지원한 프로젝트 관리 / 모집하고 있는 프로젝트의 지원자 관리
>프로젝트 관리 메뉴를 따로 제공하여 프로젝트 지원 관리가 가능하도록 구현했습니다.
>해당 메뉴에선 지원한 프로젝트 및 모집중인 프로젝트 목록이 확인가능하며, 지원 수락(수락 시 같은 항목에 지원한 지원자들 자동거절 되도록 설계) / 지원 거절 / 지원취소 등 필수 기능들이 가능하도록 구현했습니다. 
<pre>
<code>
&lt;!-- 내가 지원한 프로젝트 리스트 : (프로젝트 아이디, 파트PK), 프로젝트 이름, 파트, 지원코멘트, 상태  --&gt;
&lt;select id="select-myapply" resultType="edu.hexa.leejaehoon.domain.MyApplyDTO"&gt;
SELECT pro.pid, app.part_pk, pro.pname, app.part, app.comment, app.apply_regdate, app.state
FROM pentacore.project AS pro
JOIN (
SELECT apply.*, part.pid, part.part
FROM pentacore.manage_recruit AS apply
JOIN pentacore.manage_project_part AS part 
ON part.part_pk = apply.part_pk
WHERE apply.user_id = #{uid}
) AS app 
ON app.pid = pro.pid
&lt;/select&gt;

&lt;!-- 내 프로젝트의 지원자들 관리 --&gt;
&lt;select id="select-mycandidate" resultType="edu.hexa.leejaehoon.domain.MyCandidateDTO"&gt;
&lt;!-- 프로젝트 아이디, 파트PK, 프로젝트 이름, 파트, 지원자 아이디, 지원멘트, 지원날짜, 상태 --&gt;
SELECT search.pid, search.part_pk, project.pname, search.part, search.user_id, search.comment, search.apply_regdate, search.state FROM 
(
SELECT leader.leader_uid, apply.pid, apply.part_pk, apply.part, apply.user_id, apply.comment, apply.apply_regdate, apply.state FROM
(SELECT mr.*, mpp.pid, mpp.part FROM pentacore.manage_recruit AS mr
JOIN pentacore.manage_project_part AS mpp ON mr.part_pk = mpp.part_pk) AS apply
LEFT JOIN pentacore.project_leader AS leader
ON apply.pid = leader.pid
WHERE leader.leader_uid = #{uid}
) AS search
JOIN pentacore.project AS project
ON project.pid = search.pid
&lt;/select&gt;


&lt;!-- 신청 수락 --&gt;
&lt;!-- 1. 수락한  part_pk 랑 user_id 받아와서 상태변경 (2: 수락) --&gt;
&lt;update id="apply-accept1"&gt;
UPDATE pentacore.manage_recruit SET state = 2 
WHERE part_pk = #{part_pk} AND user_id = #{user_id}
&lt;/update&gt;
&lt;!-- 2. 다른 지원자들 상태 3으로 변경(거절) --&gt;
&lt;update id="apply-accept2"&gt;
UPDATE pentacore.manage_recruit SET state = 3
WHERE part_pk = #{part_pk} AND state = 1
&lt;/update&gt;
&lt;!-- 3.manage_project_part에 user_id 추가 --&gt;
&lt;update id="apply-accept3"&gt;
UPDATE pentacore.manage_project_part 
SET user_id = #{user_id }
WHERE part_pk = #{part_pk}
&lt;/update&gt;

&lt;!-- 거절 --&gt;
<update id="apply-reject"&gt;
UPDATE pentacore.manage_recruit SET state = 3
WHERE part_pk = #{part_pk} AND user_id = #{user_id}
&lt;/update&gt;
</code>
</pre>