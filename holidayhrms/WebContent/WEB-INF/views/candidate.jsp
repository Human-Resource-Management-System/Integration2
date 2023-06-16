<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enter Candidate Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="date"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Additional styling */
        .form-container {
            margin-top: 40px;
        }

        .form-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-field {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }

        .form-field label {
            font-weight: bold;
        }

        .form-field input[type="text"],
        .form-field input[type="date"],
        .form-field input[type="email"],
        .form-field textarea {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1 class="form-header">Enter Candidate Details</h1>
        <form method="post" action="success">
            <div class="form-field">
                <label for="firstName">First Name:</label>
                <input type="text" name="firstName" id="firstName" required>
            </div>

            <div class="form-field">
                <label for="middleName">Middle Name:</label>
                <input type="text" name="middleName" id="middleName">
            </div>

            <div class="form-field">
                <label for="lastName">Last Name:</label>
                <input type="text" name="lastName" id="lastName" required>
            </div>

            <div class="form-field">
                <label for="rDate">Registration Date:</label>
                <input type="date" name="rDate" id="rDate" required>
            </div>

            <div class="form-field">
                <label for="gender">Gender:</label>
                <input type="text" name="gender" id="gender" required>
            </div>

            <div class="form-field">
                <label for="dob">Date of Birth:</label>
                <input type="date" name="dob" id="dob" required>
            </div>

            <div class="form-field">
                <label for="email">Email:</label>
                <input type="text" name="email" id="email" required>
            </div>

            <div class="form-field">
                <label for="mobile">Mobile Number:</label>
                <input type="text" name="mobile" id="mobile" required>
            </div>

            <div class="form-field">
                <label for="address">Address:</label>
                <textarea name="address" id="address" rows="3" required></textarea>
            </div>

            <div class="form-field">
                <label for="ludate">Last Update Date:</label>
                <input type="date" name="ludate" id="ludate" required>
            </div>

            <div class="form-field">
                <label for="status">Status:</label>
                <input type="text" name="status" id="status" required>
            </div>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
