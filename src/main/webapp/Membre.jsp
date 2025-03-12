<%@ page import="Model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    HttpSession sessionObj = request.getSession(false);
    User users = (sessionObj != null) ? (User) sessionObj.getAttribute("user") : null;
    if (users == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<html>
<head>
    <title>Membre</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class ="bg-cover bg-center bg-no-repeat flex items-center justify-center min-h-screen" style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">
<nav class="bg-gray-700 shadow-lg p-4 fixed top-0 left-0 w-full">
    <div class="container mx-auto flex justify-between items-center">
        <a href="index.jsp" class="text-white text-2xl font-semibold">SportFlow</a>
        <div class="space-x-4">
            <a href="index.jsp" class="text-white hover:text-blue-300">Accueil</a>
            <a href="Membre.jsp" class="text-white hover:text-blue-300">Activités</a>
            <a href="Entraineur.jsp" class="text-white hover:text-blue-300">Coachs</a>
            <a href="Login.jsp" class="text-white hover:text-blue-300">Connexion</a>
            <a href="Register.jsp" class="text-white hover:text-blue-300">Inscription</a>
        </div>
    </div>
</nav>
<div class="bg-white bg-opacity-20 p-6 rounded-lg shadow-lg w-full max-w mb-6">
    <table class="w-full table-auto">
        <thead>
        <tr>
            <th class="text-black px-4 py-2 text-left">Nom d'utilisateur</th>
            <th class="text-black px-4 py-2 text-left">Date</th>
            <th class="text-black px-4 py-2 text-left">Heure</th>
            <th class="text-black px-4 py-2 text-left">Actions</th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <td class="text-black px-4 py-2">John Doe</td>
            <td class="text-black px-4 py-2">2025-02-20</td>
            <td class="text-black px-4 py-2">14:00</td>
            <td class="px-4 py-2">
                <div class="flex space-x-2">
                    <form action="/confirmer" method="post" class="inline">
                        <button type="submit" class="bg-green-500 hover:bg-green-600 text-white py-1 px-3 rounded-md">Confirmer</button>
                    </form>

                    <form action="/annuler" method="post" class="inline">
                        <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-1 px-3 rounded-md">Annuler</button>
                    </form>

                    <form action="/update" method="post" class="inline">
                        <button type="submit" class="bg-yellow-500 hover:bg-yellow-600 text-white py-1 px-3 rounded-md">Modifier</button>
                    </form>
                </div>
            </td>
        </tr>
        <tr>
            <td class="text-black px-4 py-2">John Doe</td>
            <td class="text-black px-4 py-2">2025-02-20</td>
            <td class="text-black px-4 py-2">14:00</td>
            <td class="px-4 py-2">
                <div class="flex space-x-2">
                    <form action="/confirmer" method="post" class="inline">
                        <button type="submit" class="bg-green-500 hover:bg-green-600 text-white py-1 px-3 rounded-md">Confirmer</button>
                    </form>

                    <form action="/annuler" method="post" class="inline">
                        <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-1 px-3 rounded-md">Annuler</button>
                    </form>

                    <form action="/update" method="post" class="inline">
                        <button type="submit" class="bg-yellow-500 hover:bg-yellow-600 text-white py-1 px-3 rounded-md">Modifier</button>
                    </form>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<a href="logout" class="fixed right-6 bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-md">
    Se deconnecter</a>
</body>
</html>
