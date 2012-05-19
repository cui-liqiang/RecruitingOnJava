<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<form method="POST" action="/user">
    <table>
        <tr>
            <td><label for="name"> YOUR NAME </label></td>
            <td><input name="name" type="text" id="name"></td>
        </tr>
        <tr>
            <td><label for="university"> University </label></td>
            <td><input name="university" type="text" id="university"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input class="submit" type="submit" value="Save Changes"/>
            </td>
        </tr>
    </table>
</form:form>