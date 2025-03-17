<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un Membre</title>
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
        </div>
    </div>
</nav>

<div class="container mx-auto mt-10 p-8 bg-white rounded-lg shadow-lg max-w-lg">
    <h2 class="text-2xl font-bold mb-4 text-center">Ajouter un Membre</h2>

    <form action="addmembre" method="post" class="space-y-4">
        <div>
            <label class="block text-gray-700">ID Utilisateur</label>
            <input type="number" name="user_id" required class="w-full p-2 border border-gray-300 rounded">
        </div>

        <div>
            <label class="block text-gray-700">Name</label>
            <input type="text" name="username" required class="w-full p-2 border border-gray-300 rounded">
        </div>

        <div>
            <label class="block text-gray-700">Email</label>
            <input type="text" name="email" required class="w-full p-2 border border-gray-300 rounded">
        </div>

        <div>
            <label class="block text-gray-700">Password</label>
            <input type="text" name="password" required class="w-full p-2 border border-gray-300 rounded">

        </div>

        <div>
            <label class="block text-gray-700">Date de naissance</label>
            <input type="text" name="dateNaissance" required class="w-full p-2 border border-gray-300 rounded">
        </div>


        <div>
            <label class="block text-gray-700">Sport</label>
            <input type="text" name="sport" required class="w-full p-2 border border-gray-300 rounded">
        </div>

        <button type="submit" class="w-full bg-green-500 text-white p-2 rounded hover:bg-green-600">
            Ajouter
        </button>
    </form>
</div>

</body>
</html>