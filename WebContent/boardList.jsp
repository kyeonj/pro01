<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>    
<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "system";
		String dbpw = "1234";
		String sql = "";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, dbid, dbpw);
			sql = "select * from board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="header.css">
    <style>
    /* header.css*/
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height: 500px; overflow: hidden;}
    .vs img { display:block; width: 1200px; height:auto; margin: auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom: 3px solid #eee;}
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
 
    .page_title {padding-top: 1em; text-align: center; margin-top: 50px; color: #333;}
    .home {color: #333;}

    .frm { border:2px solid darkgray; padding: 24px; width: 780px; margin:50px auto;  }
	.tb { display:table; margin:40px auto; width:850px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:cornflowerblue; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:200px; text-align:center; }
	.tb tr th:nth-child(3) { width:200px; text-align:center; }
	.tb tr th:nth-child(4) { width:150px; text-align:center; }
	.tb tr th:last-child {width:160px; text-align:center; }
    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<div class="wrap">
    <header class="hd">
 		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/login.jpg" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">고객 문의</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">고객 문의</h2>
                	<div class="tb_fr">
                		<table class="tb">
                			<thead>
                				<tr>
                					<th>연번</th>
                					<th>제목</th>
  									<th>글내용</th>
  									<th>작성자</th>
  									<th>작성일</th>
                				</tr>
                			</thead>
                			<tbody>
<%
		int cnt = 0;
		while(rs.next()){
			cnt+=1;
%>
			<tr>
					<td><%=cnt %></td>
					<td><a href='boardDetail.jsp?title=<%=rs.getString("title") %>'><%=rs.getString("title") %></a></td>
					<td><%=rs.getString("content") %></td>
					<td><%=rs.getString("author") %></td>
					<td><%=rs.getString("resdate") %></td>
			</tr>
<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						</tbody> 
					</table>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>