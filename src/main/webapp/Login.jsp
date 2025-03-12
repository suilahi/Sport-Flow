<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-cover bg-center bg-no-repeat flex items-center justify-center min-h-screen" style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">

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

<div class="bg-white p-8 rounded-lg shadow-md w-96">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Connexion</h2>


    <form action="login" method="POST">
        <div class="mb-4">
            <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
            <input type="email" id="email" name="email" required autocomplete="off"
                   class="w-full px-4 py-2 mt-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 text-black"
                   placeholder="Votre email">
        </div>

        <div class="mb-4">
            <label for="password" class="block text-sm font-medium text-gray-700">Mot de Passe</label>
            <input type="password" id="password" name="password" required autocomplete="off"
                   class="w-full px-4 py-2 mt-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 text-black"
                   placeholder="Votre mot de passe">
        </div>

        <button type="submit" class="w-full py-2 mt-4 bg-blue-500 text-white font-semibold rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
            Se Connecter
        </button>
    </form>

    <div class="mt-4 text-center">
        <a href="Register.jsp" class="text-sm text-blue-500 hover:underline">Créer un compte</a>
    </div>
</div>

</body>
</html>