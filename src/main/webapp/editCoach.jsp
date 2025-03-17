<%@ page import="Membre.Model.Member" %>
<%@ page import="Membre.Dao.MembreDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier Entraîneur</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<%
    int id= 1;
    System.out.println(request.getAttribute("id"));
    MembreDao membreDao = new MembreDao();
    Member member = membreDao.getMemberById(id);
    if (member == null) {
        response.sendRedirect("MemberServlet?action=list");
        return;
    }
%>

<div class="bg-white p-8 rounded-lg shadow-lg w-96">
    <h2 class="text-2xl font-bold text-center mb-4">Modifier Member</h2>
    <form action="UpdateMember" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="id" value="<%= member.getId() %>">


        <div class="mb-4">
            <label class="block text-gray-700">Username:</label>
            <input type="text" name="username" value="<%= member.getUserame() %>" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700">Email:</label>
            <input type="text" name="email" value="<%= member.getEmail() %>" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700">Password:</label>
            <input type="text" name="password" value="<%= member.getPassword() %>" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700">Date de naissance:</label>
            <input type="text" name="dateNaissance" value="<%= member.getDateNaissance() %>" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <div class="mb-4">
            <label class="block text-gray-700">Sport:</label>
            <input type="text" name="sport" value="<%= member.getSport() %>" class="w-full p-2 border border-gray-300 rounded" required>
        </div>

        <div class="flex justify-between">
            <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Mettre à jour</button>
            <a href="CoachServlet?action=list" class="bg-gray-500 text-white px-4 py-2 rounded">Annuler</a>
        </div>
    </form>
</div>

</body>
</html>