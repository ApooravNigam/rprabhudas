<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<tiles:insertAttribute name="admin_head" />
<body>
	<h3>Access Denied to Admin Panel</h3>
	${msg }
	<br>
	<a href = "${pageContext.request.contextPath }/home/admin/login">Back</a>
</body>
</html>