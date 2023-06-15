<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.EmployeeRefDocuments" %>
<%@ page import="java.util.List" %>

<div id="main-div" style="width: 100%; max-width: 800px; margin: 0 auto; font-family: Arial, sans-serif;">
  
  <% 
  List<EmployeeRefDocuments> er = ( List<EmployeeRefDocuments> ) request.getAttribute("document");
  String imagePath = request.getContextPath() + "/";%> 
  
  <div class="category-select" style="text-align: center; margin-bottom: 10px;">
    <label for="category" style="font-weight: bold;">Select Category:</label>
    <select id="category" name="category" onchange="filterDocumentsByCategory()" style="font-size: 16px; padding: 4px;">
      <option value="all">All Categories</option>
      <option value="employee-handbook">Employee Handbook</option>
      <option value="code-of-conduct">Code of Conduct</option>
      <!-- Add more category options here -->
    </select>
  </div>

  <div class="category" id="employee-handbook" style="margin-bottom: 20px; border: 1px solid #ccc; padding: 10px; background-color: #f9f9f9;">
    <div class="category-title" style="font-weight: bold; font-size: 20px; margin-bottom: 10px;">Employee Handbook</div>
    <% String m = "Employee Handbook";
    for (EmployeeRefDocuments doc : er) {
      if (doc != null && doc.getCategory().equals(m)) { %>
        <div class="document" style="display: flex; align-items: center; margin-bottom: 5px;">
          <div class="document-name" style="flex-grow: 1;"><%= doc.getDocName() %></div>
          <div class="document-link" onclick="openDocument('<%= doc.getDocName() %>')" style="color: blue; text-decoration: underline; cursor: pointer; margin-right: 10px;">View</div>
          <div class="document-link" onclick="deleteDocument('<%= doc.getId() %>')" style="color: blue; text-decoration: underline; cursor: pointer;">Delete</div>
        </div>
      <% } 
    } %>
  </div>

  <div class="category" id="code-of-conduct" style="margin-bottom: 20px; border: 1px solid #ccc; padding: 10px; background-color: #f9f9f9;">
    <div class="category-title" style="font-weight: bold; font-size: 20px; margin-bottom: 10px;">Code of Conduct</div>
    <%String n = "Code of Conduct";
    for(EmployeeRefDocuments doc : er) {
      if(doc != null && doc.getCategory().equals(n)) {%>
        <div class="document" style="display: flex; align-items: center; margin-bottom: 5px;">
          <div class="document-name" style="flex-grow: 1;"><%= doc.getDocName() %></div>
          <div class="document-link" onclick="openDocument('<%= doc.getDocName() %>')" style="color: blue; text-decoration: underline; cursor: pointer; margin-right: 10px;">View</div>
          <div class="document-link" onclick="deleteDocument('<%= doc.getId() %>')" style="color: blue; text-decoration: underline; cursor: pointer;">Delete</div>
        </div>
      <% }} %>
  </div>

  <div class="add-button" style="text-align: center; margin-top: 20px;">
    <a href="addReferenceDocument" style="display: inline-block; padding: 10px 20px; background-color: #007bff; color: #fff; text-decoration: none; font-size: 16px; font-weight: bold; border-radius: 4px;">Add Document</a>
  </div>

  <script>
  function filterDocumentsByCategory() {
      var category = document.getElementById("category").value;

      // Show/hide the corresponding categories based on the selected option
      if (category === "all") {
        document.getElementById("code-of-conduct").style.display = "block";
        document.getElementById("employee-handbook").style.display = "block";
        // Add more category elements here if needed
      } else if (category === "employee-handbook") {
        document.getElementById("code-of-conduct").style.display = "none";
        document.getElementById("employee-handbook").style.display = "block";
        // Hide other category elements if needed
      } else if (category === "code-of-conduct") {
        document.getElementById("code-of-conduct").style.display = "block";
        document.getElementById("employee-handbook").style.display = "none";
        // Hide other category elements if needed
      }
      // Add more category conditions here if needed
    }

    function openDocument(documentPath) {
      console.log('Opening document:', documentPath);
      window.location.href = '<%= imagePath %>' + documentPath;
    }

    function deleteDocument(documentId) {
      const form = document.createElement('form');
      form.method = 'POST';
      form.action = '/deleteReferenceDocument'; // Replace with the appropriate URL for your delete endpoint

      const documentIdInput = document.createElement('input');
      documentIdInput.type = 'hidden';
      documentIdInput.name = 'documentId';
      documentIdInput.value = documentId;

      form.appendChild(documentIdInput);
      document.body.appendChild(form);
      form.submit();
    }

    function showMessage(message) {
      // Assuming you have a message element in your HTML, e.g., <div id="message"></div>
      const messageElement = document.getElementById('message');
      messageElement.textContent = message;
      messageElement.style.display = 'block';
    }

    function updateUI(documentId) {
      const documentElement = document.getElementById(documentId);// Find the document element to be removed
      if (documentElement) {
        documentElement.remove();    // Remove the document element from the DOM
        refreshPage();
      }
    }

    function refreshPage() { 
      location.reload();  // Reload the current page
    }
  </script>
</div>
