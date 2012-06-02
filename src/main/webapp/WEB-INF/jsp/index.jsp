<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<link href="/css/bootstrap-responsive.css"  rel="stylesheet"/>
<link href="/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>
<form method="POST" action="/user" class="well form-horizontal">
        <div class="control-group">
            <label for="name" class="control-label">Your Name</label>
            <div class="controls">
                <input name="name" type="text" id="name">
            </div>
        </div>
        <div class="control-group">
            <label for="university" class="control-label">University</label>
            <div class="controls">
                <input name="university" type="text" id="university">
            </div>
        </div>
        <div class="form-actions">
            <input class="btn btn-primary submit" type="submit" value="Save Changes" />
        </div>
    </form>

<script src="/js/bootstrap.js"></script>
<script src="/js/jquery-1.7.2.min.js"></script>

</body>
</html>