<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Candidate List</title>
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
        button:hover {
      background-color: #45a049;
    }
    </style>
</head>
<body>
    <div class="table-container">
        <h1>Candidate List</h1>
        <%-- Retrieve the list of employees from the model --%>
        <% List<Object[]> candidates = (List<Object[]>) request.getAttribute("candidates"); %>
        <%-- Check if the list is not null and not empty --%>
        <% if (candidates != null && !candidates.isEmpty()) { %>
            <table>
                <thead>
                    <tr>
                        <th>Candidate ID</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>View</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Iterate over the list of employees and display the data --%>
                    <% for (Object[] candidate : candidates) { %>
                        <tr>
                            <td align="center"><%= candidate[0] %></td>
                            <td align="center"><%= candidate[1] %></td>
                            <td align="center"><%= candidate[2] %></td>
                            <td align="center"><%= candidate[3] %></td>
                            <td align="center"><a class="view-link" href="viewcandidate?id=<%= candidate[0] %>">View</a></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } else { %>
            <p class="no-employees">No candidates found.</p>
        <% } %>
        <div class="add-button">
            <button onclick="window.location.href='candidate'">ADD</button>
        </div>
    </div>
</body>
</html>
