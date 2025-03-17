<%@ page import="Entraineur.Model.Entraineur" %>
<%@ page import="java.util.List" %>
<%@ page import="Membre.Model.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Coach</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<nav class="navbar p-4 flex justify-between items-center fixed top-0 w-full z-10">
    <div class="text-4xl font-extrabold text-[#FFD700] tracking-wide">SportFlow Admin</div>
    <div class="space-x-8">
        <a href="MemberServlet" class="nav-link text-[#FFD700] text-xl font-semibold">Members</a>
        <a href="EntraineurServlet" class="nav-link text-[#FFD700] text-xl font-semibold"> Entraineurs</a>
        <a href="manageSeances.jsp" class="nav-link text-[#FFD700] text-xl font-semibold">Séances</a>
        <a href="Logout" class="nav-link text-[#FFD700] text-xl font-semibold hover:text-red-500">Logout</a>
    </div>
</nav>

<!-- Main Body -->
<main class="flex-grow py-20 mt-16">
    <div class="text-center mb-12">
        <h1 class="text-5xl font-extrabold text-[#FFD700] mb-6 animate-fade-in">Manage Entraineurs</h1>
        <p class="text-xl text-gray-300 animate-fade-in" style="animation-delay: 0.5s;">View and manage trainers below.</p>
    </div>
    <div class="table-container mx-auto max-w-5xl p-6">
        <div class="flex justify-end mb-4">
            <a href="Register.jsp" class="btn bg-[#FFD700] text-black font-semibold py-2 px-4 rounded-lg">Add Entraineur</a>
        </div>
        <table class="w-full text-left text-gray-300">
            <thead>
            <tr class="border-b border-[#FFD700]">
                <th class="py-3 px-4">ID</th>
                <th class="py-3 px-4">Name</th>
                <th class="py-3 px-4">Email</th>
                <th class="py-3 px-4">Specialite</th>
                <th class="py-3 px-4">Actions</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Entraineur> entraineurs = (List<Entraineur>) request.getAttribute("entraineur");
                for(Entraineur entraineur : entraineurs){
            %>
            <tr class="border-b border-gray-700">
                <td class="py-3 px-4"><%=entraineur.getId()%></td>
                <td class="py-3 px-4"><%=entraineur.getUserame()%></td>
                <td class="py-3 px-4"><%=entraineur.getEmail()%></td>
                <td class="py-3 px-4"><%=entraineur.getSpecialite()%></td>

                <td class="py-3 px-4">
                    <a href="editMember.jsp?id=<%=entraineur.getId()%>" class="text-[#FFD700] hover:text-[#e6c200]">Edit</a> |
                    <a href="deleteMember.jsp?id=<%=entraineur.getId()%>" class="text-red-500 hover:text-red-400">Delete</a>
                </td>
            </tr>
            <%  } %>

            </tbody>
        </table>
    </div>
</main>


<%
    HttpSession sessionCheck = request.getSession(false);
    if (sessionCheck == null || sessionCheck.getAttribute("user") == null ) {
        response.sendRedirect("Login.jsp");
    }
%>
</body></html>
