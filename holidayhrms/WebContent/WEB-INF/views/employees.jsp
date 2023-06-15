<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
    <style>
        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
        }

 .table-container {
        width: 100%;
        overflow-x: auto;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }
    th, td {
        padding: 10px 13px;
    }
    th {
        background-color: #333;
        color: #fff;
        font-weight: bold;
        align:center;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }

        .no-employees {
            margin-top: 20px;
            color: #888;
            text-align: center;
        }



        /* Custom styles */
        .view-link {
            color: #007bff;
            text-decoration: none;
        }

        .view-link:hover {
            text-decoration: underline;
        }

        .center {
            text-align: center;
            margin-top: 20px;
        }
        
        .add-button {
            margin-top: 20px;
            text-align: center;
        }
        
        .add-button button {
            height: 40px;
            width: 120px;
            background-color: #358eb8;
            font-size: 16px;
            font-weight: bold;
        }
        
        .delete-button {
            margin-top: 10px;
            text-align: center;
        }
        
        .delete-button button {
            height: 40px;
            width: 120px;
            background-color: #358eb8;
            font-size: 16px;
            font-weight: bold;
            
        }
        
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h1>Employee List</h1>
        <%-- Retrieve the list of employees from the model --%>
        <% List<Object[]> employees = (List<Object[]>) request.getAttribute("employees"); %>
        <%-- Check if the list is not null and not empty --%>
        <% if (employees != null && !employees.isEmpty()) { %>
            <table>
                <thead>
                    <tr>
                        <th>Employee ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Surname</th>
                        <th>View</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Iterate over the list of employees and display the data --%>
                    <% for (Object[] employee : employees) { %>
                        <tr>
                            <td align="center"><%= employee[0] %></td>
                            <td align="center"><%= employee[1] %></td>
                            <td align="center"><%= employee[2] %></td>
                            <td align="center"><%= employee[3] %></td>
                            <td align="center"><a class="view-link" href="get-employee-details?id=<%= employee[0] %>">View</a></td>
                            <td align="center"><a class="view-link" href="updempl?id=<%= employee[0] %>">Edit</a></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
            <div class="add-button">
                <button onclick="window.location.href='addempl'">Add</button>
            </div>
            <div class="delete-button">
                <button onclick="window.location.href='delempl'">Delete</button>
            </div>
        <% } else { %>
            <p class="no-employees">No employees found.</p>
        <% } %>
    </div>
</body>
</html>
