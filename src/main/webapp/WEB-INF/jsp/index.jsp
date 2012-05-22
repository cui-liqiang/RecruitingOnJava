<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Recruiting</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-responsive.css" />
    <script type="text/javascript" src="/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
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
            <input class="btn btn-primary" type="submit" value="Save Changes" />
        </div>
    </form>
</body>
</html>