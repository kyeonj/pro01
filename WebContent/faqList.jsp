<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>    
<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String sid = (String) session.getAttribute("id");
		if(sid==null){
			sid="guest";	
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid = "system";
		String dbpw = "1234";
		String sql = "";
		int cnt = 0;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(url, dbid, dbpw);
			sql = "select * from faqa order by parno asc, gubun asc";	
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
	.tb { display:table; margin:40px auto; width:950px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:cornflowerblue; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center;  }
	.tb tr th:nth-child(2) { width:200px; text-align:center; }
	.tb tr th:nth-child(3) { width:200px; text-align:center; }
	.tb tr th:last-child {width:160px; text-align:center; }
	.btn_group { clear:both; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:1px solid cornflowerblue; text-align:center; }
	.btn_group .btn:hover  {border:1px solid lightpink;}
	.btn_group .btn.primary { background-color:cornflowerblue; color:#fff;  float: right; margin-left: 300px;}
	.btn_group .btn.primary:hover { background-color:lightpink; }
    </style>
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="datatables.min.css">
    <script src="datatables.min.js"></script>
    <script>
	    $(document).ready( function () {
	        $('#myTable').DataTable();
	    } );
    </script>
    <style>
    #myTable_filter > label > input[type=search] { color:#333; }
    #myTable {width: 100%; height: auto;}
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd">
 		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/login.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">??????????????????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">??????????????????</h2>
                	<div class="tb_fr">
                		<table class="tb" id="myTable">
                			<thead>
                				<tr>
                					<th>??????</th>
                					<th>??????</th>
  									<th>?????????</th>
  									<th>?????????</th>
                				</tr>
                			</thead>
                			<tbody>
<%
		while(rs.next()){
			cnt+=1;
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
			<tr>
					<td><%=cnt %></td>
					<td>
					<% if(rs.getInt("gubun")==0) { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' ><%=rs.getString("title") %></a>
					<% } else { %>
						<a href='faqDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:130px;"><%=rs.getString("title") %></a>
					<% } %>
					</td>
					<td><%=rs.getString("author") %></td>
					<td><%=date %></td>
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
					<div class="btn_group">
						<% if(sid.equals("admin")) { %>
						<a href="faqWrite.jsp" class="btn primary">?????????</a>
						<% } %>
					</div>	
				</div>
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