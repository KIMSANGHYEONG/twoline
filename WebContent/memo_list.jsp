  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<%@ page import="java.util.ArrayList" %>
<%@ page import="twoline.OnelineDAO" %>
<%@ page import="twoline.OnelineDTO" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메모장</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');
	
	h3 {
		text-align : center;
		font-family: 'Dancing Script', cursive;
	}
	#reg {
		width : 250px;
		margin :10px auto;
	}
	p {
		text-align : center;
		height : 20px;
		font-family: 'Nanum Brush Script', cursive;
		font-size : 25px;
	}
	#text {
		width : 1000px;
		height : 45px;
		border-bottom : 2px solid green;
		margin : 10px auto;
	}
	
</style>
</head>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO> dtos = dao.getList();
%>
<body>
	<h3>Note Pad</h3><hr style= "border-color: green ;">
	<form method="post" action="memo_write.jsp">
		<div id = "reg">
			<input type="text" name="memo"> 
			<input type="submit" value="등록">
		</div>
	</form>

	<div>
<%
	for(int i = 0; i < dtos.size() ; i++) {
		OnelineDTO dto = dtos.get(i);
		out.println("<p>(" + dto.getWdate() + ") " + dto.getMemo() + 
				"<input type=\"button\" value=\"X\" onClick=\"location.href='memo_delete.jsp?no=" + dto.getNo() + "'\"><br>");
		out.println("</input></p>");
	}
%>	
		
	</div>

</body>
</html>






    
