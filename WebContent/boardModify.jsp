<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>    
<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String sid = (String) request.getAttribute("id");
		int no = Integer.parseInt(request.getParameter("no"));
		
		String title = "";
		String content = "";
		String uname = "";
		String resdate = "";
		String author = "";
		
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
			sql = "select a.no no, a.title title, a.content content, ";
			sql = sql + "b.name name, a.resdate resdate, a.author author ";
			sql = sql + "from board a inner join member1 b ";
			sql = sql + "on a.author=b.id where a.no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				title = rs.getString("title");
				content = rs.getString("content");
				uname = rs.getString("name");
				resdate = rs.getString("resdate");
				author = rs.getString("author");
			}
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			rs.close();
			pstmt.close();
			con.close();
		}
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
 
    .page_title {padding-top: 1em; text-align: center; margin-top: 50px; margin-bottom:-20px; color: #333;}
    .home {color: #333;}
    .frm1 { padding: 24px; width: 960px; margin:30px auto; }
	.tb { display:table; margin:40px auto; width:900px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #333; color:#fff; background-color:cornflowerblue;
    width:150px; border-left:1px solid #333; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
     border-right:1px solid #333;
    width:600px; box-sizing:border-box; padding:8px; }
	.tb tr:first-child th { border-top:1px solid #333; }
    .tb tr:first-child td { border-top:1px solid #333; }
    .tb tr:last-child th { border-bottom:1px solid #333; }
    .tb tr:last-child td { border-bottom:1px solid #333; }
	.btn_group { clear:both;  margin-left: 350px; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:1px solid cornflowerblue; text-align:center; }
	.btn_group .btn:hover { border:1px solid lightpink;}
	.btn_group .btn.primary { background-color:cornflowerblue; color:#fff; }
	.btn_group .btn.primary:hover { background-color:lightpink; }
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; color:#333; background-color:#fff;  border:1px solid #333;}
	textarea { padding:6px; }
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
                <span class="sel">A/S 신청 수정하기</span>
             </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">A/S 신청 수정하기</h2>
  				<div class="frm1">
  					<form name="frm" action="boardModifyPro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>            
	  							<tr>
									<th>글 번호</th>
									<td><%=no %><input type="hidden" name="no" id="no" value="<%=no %>" readonly></td>
								</tr> 
								<tr>
									<th>제목</th>
									<td><input type="text" name="title" id="title" value="<%=title %>" class="in_data" required /></td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea cols="100" rows="20" name="content" id="content"><%=content %></textarea>
									</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><%=uname %></td>
								</tr>
							</tbody> 
						</table>
						<div class="btn_group">
							<button type="submit" class="btn primary">수정 완료</button>
							<a href="boardList.jsp" class="btn primary">목록으로</a>
						</div>
					</form>
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