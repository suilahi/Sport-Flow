<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="Membre.Model.Member" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des Membres</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
<nav class="bg-gray-700 shadow-lg p-4">
    <div class="container mx-auto flex justify-between items-center">
        <a href="index.jsp" class="text-white text-2xl font-semibold">SportFlow</a>
        <div class="space-x-4">
            <a href="index.jsp" class="text-white hover:text-blue-300">Accueil</a>
            <a href="Membre.jsp" class="text-white hover:text-blue-300">Membres</a>
            <a href="Coach.jsp" class="text-white hover:text-blue-300">Coachs</a>
            <a href="Login.jsp" class="text-white hover:text-blue-300">Connexion</a>
            <a href="Register.jsp" class="text-white hover:text-blue-300">Inscription</a>
            <a href="logout" class="nav-link text-[#FFD700] text-xl font-semibold hover:text-red-500">Logout</a>

        </div>
    </div>
</nav>

<div class="container mx-auto mt-10 p-8 bg-white rounded-lg shadow-lg">
    <h2 class="text-2xl font-bold mb-4 text-center">Liste des Membres</h2>
    <a href="addMembre.jsp" class="mb-4 inline-block bg-green-500 text-white px-4 py-2 rounded">Ajouter un Membre</a>
    <table class="min-w-full bg-white border border-gray-200">
        <thead>
        <tr>
            <th class="py-2 px-4 border">ID</th>
            <th class="py-2 px-4 border">Name</th>
            <th class="py-2 px-4 border">Email</th>
            <th class="py-2 px-4 border">Sport</th>
            <th class="py-2 px-4 border">Date de Naissance</th>
        </tr>
        </thead>
        <tbody>
        <% List<Member> members = (List<Member>) request.getAttribute("members");
            if (members != null) {
                for (Member member : members) { %>
        <td class="py-2 px-4 border"><%= member.getId() %></td>
        <td class="py-2 px-4 border"><%= member.getUserame() %></td>
        <td class="py-2 px-4 border"><%= member.getEmail() %></td>
        <td class="py-2 px-4 border"><%= member.getSport() %></td>
        <td class="py-2 px-4 border"><%= member.getDateNaissance() %></td>

        <a href="editCoach.jsp?id=<%=member.getId()%>" class="text-blue-500">Modifier</a>
                |
        <a href="editCoach.jsp"<%= member.getId() %> class="text-red-500" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce membre ?');">Supprimer</a>
            </td>
        </tr>
        <%    }
        } %>
        </tbody>
    </table>
</div>
</body>
</html>