<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-cover bg-center bg-no-repeat min-h-screen flex flex-col" style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">

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

<div class="flex justify-center items-center flex-grow text-center mt-20"> <!-- Ajout d'une marge pour éviter la superposition avec la barre -->
    <div class="bg-white bg-opacity-80 p-8 rounded-lg shadow-lg max-w-lg">
        <h1 class="text-3xl font-bold text-gray-800 mb-4">Bienvenue sur SportFlow !</h1>
        <p class="text-lg text-gray-700">
            SportFlow est une plateforme dédiée aux passionnés de sport.
            Rejoignez notre communauté pour découvrir, partager et vivre votre passion sportive au maximum.
        </p>
    </div>
</div>

</body>
</html>
