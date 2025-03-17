<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créer un Compte - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-cover bg-center bg-no-repeat min-h-screen flex flex-col" style="background-image: url('https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&h=1080&w=1920');">
<div class="register-container">

    <div class="form-section">
        <h2 class="text-4xl font-bold text-center text-black mb-8 animate-slide-in">WELCOME SportFlow</h2>
        <form id="registerForm" action="register" method="post" class="space-y-5">

            <div class="animate-slide-in" style="animation-delay: 0.1s;">
                <label for="role" class="block text-white font-semibold text-lg">I am a:</label>
                <select id="role" name="role" class="w-full p-3 bg-[#1a1a1a] text-white border border-red rounded-lg focus:border-[#FFD700]" required>
                    <option value="" disabled selected>Select your role</option>
                    <option value="member">Member</option>
                    <option value="entraineur">Entraineur</option>
                </select>
            </div>

            <!-- Common Fields -->
            <div id="commonFields" class="space-y-5">
                <div class="animate-slide-in" style="animation-delay: 0.2s;">
                    <label for="username" class="block text-white font-semibold">Username</label>
                    <input type="text" id="username" name="username" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg" required>
                </div>
                <div class="animate-slide-in" style="animation-delay: 0.3s;">
                    <label for="email" class="block text-white font-semibold">Email</label>
                    <input type="email" id="email" name="email" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg" required>
                </div>
                <div class="animate-slide-in" style="animation-delay: 0.4s;">
                    <label for="password" class="block text-white font-semibold">Password</label>
                    <input type="password" id="password" name="password" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg" required>
                </div>
            </div>

            <div id="memberFields" class="space-y-5 hidden">
                <div class="animate-slide-in" style="animation-delay: 0.5s;">
                    <label for="dateNaissance" class="block text-white font-semibold">Date of Birth</label>
                    <input type="date" id="dateNaissance" name="dateNaissance" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg">
                </div>
                <div class="animate-slide-in" style="animation-delay: 0.6s;">
                    <label for="sport" class="block text-white font-semibold">Sport</label>
                    <input type="text" id="sport" name="sport" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg">
                </div>
            </div>

            <div id="entraineurFields" class="space-y-5 hidden">
                <div class="animate-slide-in" style="animation-delay: 0.5s;">
                    <label for="specialite" class="block text-white font-semibold">Specialty</label>
                    <input type="text" id="specialite" name="specialite" class="w-full p-3 bg-[#1a1a1a] text-white border border-white rounded-lg">
                </div>
            </div>

            <div class="space-y-4">
                <div class="animate-slide-in text-white text-l" style="animation-delay: 0.7s;">
                    <input type="submit" value="register" class="w-full p-3 btn-gold rounded-lg cursor-pointer">
                </div>
                <div class="flex justify-between animate-slide-in" style="animation-delay: 0.8s;">
                    <a href="index.jsp" class="w-1/2 mr-2 p-3 text-white text-l text-center rounded-lg">Back to Home</a>
                    <a href="Login.jsp" class="w-1/2 ml-2 p-3 text-white text-l text-center rounded-lg">Login</a>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    const roleSelect = document.getElementById('role');
    const memberFields = document.getElementById('memberFields');
    const entraineurFields = document.getElementById('entraineurFields');

    roleSelect.addEventListener('change', function() {
        if (this.value === 'member') {
            memberFields.classList.remove('hidden');
            entraineurFields.classList.add('hidden');

            document.getElementById('dateNaissance').required = true;
            document.getElementById('sport').required = true;
            document.getElementById('specialite').required = false;
        } else if (this.value === 'entraineur') {
            memberFields.classList.add('hidden');
            entraineurFields.classList.remove('hidden');

            document.getElementById('dateNaissance').required = false;
            document.getElementById('sport').required = false;
            document.getElementById('specialite').required = true;
        } else {
            memberFields.classList.add('hidden');
            entraineurFields.classList.add('hidden');
        }
    });
</script>
</body>
</html>
