<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form method="POST" action="/user" commandName="user" >
    <table>
        <tr>
            <td><form:label path="name"/> YOUR NAME</td>
            <td><form:input path="name"/></td>
        </tr>                             \
        <tr>
            <td><form:label path="university"/></td>
            <td><form:input path="university"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input class="submit" type="submit" value="Save Changes"/>
            </td>
        </tr>
    </table>
</form:form>