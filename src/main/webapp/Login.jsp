<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-cover bg-center bg-no-repeat min-h-screen flex flex-col" style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">
<div class="login-container">
    <!-- Form Section -->
    <div class="form-section">
        <h2 class="text-4xl font-bold text-center text-[#FFD700] mb-8 animate-slide-in">Login to SportFlow</h2>

        <% if (request.getAttribute("errorMessage") != null) { %>
        <p class="text-red-500 text-center mb-4 animate-pulse"><%= request.getAttribute("errorMessage") %></p>
        <% } %>

        <form action="login" method="post" class="space-y-5">
            <div class="animate-slide-in" style="animation-delay: 0.1s;">
                <label for="email" class="block text-[#FFD700] font-semibold text-lg">Email</label>
                <input type="text" id="email" name="email" class="w-full p-3 bg-[#1a1a1a] text-white border border-[#FFD700] rounded-lg" required>
            </div>

            <div class="animate-slide-in" style="animation-delay: 0.2s;">
                <label for="password" class="block text-[#FFD700] font-semibold text-lg">Password</label>
                <input type="password" id="password" name="password" class="w-full p-3 bg-[#1a1a1a] text-white border border-[#FFD700] rounded-lg" required>
            </div>

            <div class="space-y-4">
                <div class="animate-slide-in text-white text-lg" style="animation-delay: 0.3s;">
                    <input type="submit" value="login" class="w-full p-3 btn-gold rounded-lg cursor-pointer">
                </div>
                <div class="flex justify-between animate-slide-in" style="animation-delay: 0.4s;">
                    <a href="index.jsp" class="w-1/2 mr-2 p-3 btn-outline text-lg text-white text-center rounded-lg">Back to Home</a>
                    <a href="Register.jsp" class="w-1/2 ml-2 p-3 btn-outline text-lg text-white text-center rounded-lg">Register</a>
                </div>
            </div>
        </form>
    </div>

</div>
</body>
</html>