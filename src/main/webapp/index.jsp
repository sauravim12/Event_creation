<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Creation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"] {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px;
            margin-top: 20px;
            border: none;
            background-color: #28a745;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        select{
        	padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        a{
        	text-decoration:none;
        	margin-left:42.5%;
        	padding-top:5px;
        	color: black;
        }
        a:hover{
        	color:blue;
        	
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Event Creation</h2>
        <form action="registration.jsp" method="post">
            <input type="text" placeholder="Event Name" id="eventName" name="eventName" required>
            <input type="text" placeholder="Total Students Enrolled" id="totalStudents" name="totalStudents" required>
            <select placeholder="coordinatorName" id="coordinatorName" name="coordinatorName" selected="none" required >
                <option value="Mr. Adarsh">Mr.Adarsh</option>
                <option value="Mr. Ajeet">Mr.Ajeet</option>
                <option value="Mr. Anket">Mr.Anket</option>
                <option value="Mr. Nippu">Mr.Nippu</option>
                <option value="Mr. Sudhanshu">Mr.Sudhanshu</option>
                <option value="Mr. Saurav">Mr.Saurav</option>
            </select>
            <select placeholder="semester" id="semester" name="semester" selected required>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
            </select>
            <input type="text" placeholder="Department" id="department" name="department" required>
            <input type="text" placeholder="mm/dd/yyyy" id="startDate" name="startDate" required>
            <input type="text" placeholder="mm/dd/yyyy" id="endDate" name="endDate" required>
            
            <input type="submit" value="Submit">
            <a href="display.jsp">Display Events</a>
        </form>
        <br>
    </div>
</body>
</html>