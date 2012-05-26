<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<link href="/css/bootstrap-responsive.css"  rel="stylesheet"/>
<link href="/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
<form method="POST" action="/user">
    <table>
        <tr>
            <td><label for="name"> Your Name </label></td>
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
</form>

<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-1.7.2.min.js"></script>
</body>
</html>