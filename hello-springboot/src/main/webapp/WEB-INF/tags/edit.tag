<%@tag description="Tag Edit" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/ckeditor" user="root" password="9542" />
<sql:query var="items" sql="SELECT * FROM message" />
<html>
<body>
	<script src="ckeditor/ckeditor.js"></script>
	<tr>
	<td>
		<form action="" method="post">
			<!-- (2): textarea sẽ được thay thế bởi CKEditor -->
				<textarea id="editor1" name="editor1" cols="80" rows="10">
			</p>
				<c:forEach items="${items.rowsByIndex}" var="row">
				<tr>
					<c:forEach items="${row}" var="col">
						<td>${col}</td>
					</c:forEach>
				</tr>

				</c:forEach>
       			</textarea>
				<!-- (3): Code Javascript thay thế textarea có id='editor1' bởi CKEditor -->
			<script>
				CKEDITOR.replace('editor1');
				//CKEDITOR.instances.editor1.setData('<H1>Xin chào !!!</H1>');
			</script>
		</form>
	<td>
	<tr>
</body>
</html>