<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>I wish yuo luck in Spring MVC learning</h2>

<br>
<br>
<br>

<form:form action="showDetails"  modelAttribute="employee">


    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
<%--    <form:option value="Information technology" label="IT"/>--%>
<%--    <form:option value="Human resources" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>
    <form:options items="${employee.departments}"/>
 </form:select>
    <br><br>
    Which car do you want?
<%--    BMW <form:radiobutton path="carBrend" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrend" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrend" value="Mersedes-Benz"/>--%>
    <form:radiobuttons path="carBrend" items="${employee.carBrends}"/>
    <br>
    <input type="submit" value="OK">
</form:form>


</body>
</html>