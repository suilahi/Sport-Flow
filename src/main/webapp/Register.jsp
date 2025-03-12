<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créer un Compte - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-blue-300 to-teal-300 min-h-screen flex flex-col"style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">

<nav class="bg-gray-700 shadow-lg p-4">
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

<div class="flex justify-center items-center flex-grow">
    <div class="bg-white p-8 rounded-lg shadow-md w-96 text-center">
        <h2 class="text-2xl font-bold text-gray-700 mb-6">Créer un Compte</h2>
        <form action="register" method="post">
            <div class="mb-4">
                <input type="text" name="name" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400" placeholder="Nom complet" required>
            </div>
            <div class="mb-4">
                <input type="email" name="email" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400" placeholder="Email" required>
            </div>
            <div class="mb-4">
                <input type="password" name="password" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400" placeholder="Mot de passe" required>
            </div>
            <div class="mb-4">
                <select name="role" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-400" required>
                    <option value="">Sélectionner un rôle</option>
                    <option value="Membre">Membre</option>
                    <option value="Entraineur">Entraîneur</option>
                </select>
            </div>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600">S'inscrire</button>
        </form>
        <p class="mt-4 text-sm">Déjà inscrit ? <a href="index.jsp" class="text-blue-500 hover:underline">Se connecter</a></p>
    </div>
</div>
</body>
</html>
