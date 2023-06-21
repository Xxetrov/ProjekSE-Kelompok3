<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Content.aspx.cs" Inherits="CeritaKita.Views.Content" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Balasan - Cerita Kita</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-page md:flex h-screen flex-row">
        <!-- Sidebar Mobile -->
        <div class="fixed w-screen bg-cyan-100 flex justify-between md:hidden border-b-2 border-sky-900 drop-shadow-lg">
            <img src="/Images/Barbie.jpeg" class="h-14 w-14 rounded-full p-2 mt-1 object-left">
            <a href="index.html">
                <img src="/Images/logo.png" class="w-36 p-2">
            </a>
            <button><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                    stroke="currentColor" class="button-mobile w-16 h-16 p-2 hover:bg-teal-200">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3.75 6.75h16.5M3.75 12h16.5M12 17.25h8.25" />
                </svg>
            </button>
        </div>

        <!-- Sidebar Dekstop-->
        <div
            class="sidebar-dekstop fixed inset-y-0 w-48 md:w-64 border-r-2 border-slate-400 drop-shadow-2xl md:translate-x-0 transform -translate-x-full transition duration-200 ease-in-out h-screen overflow-y-auto">
            <a href="index.html">
                <img src="/Images/logo.png" class="p-8">
            </a>
            <nav>
                <a href="HomePage2.aspx"
                    class="flex justify-center p-6 bg-sky-200 rounded-r-full hover:transition hover:ease-in-out">Beranda</a>
                <a href="Explore.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Jelajahi</a>
                <a href="#" data-modal-target="defaultModal" data-modal-toggle="defaultModal"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Unggah</a>
                <a href="AboutUs.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Tentang Kami</a>
                <a href="Update.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Pengaturan</a>
                <asp:Button ID="logoutButton" class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold w-full" runat="server" Text="Keluar" OnClick="logoutButton_Click" />
            </nav>
            <!-- Sidebar Profile -->
            <div class="absolute bottom-0 left-0 right-0">
                <div class="flex inset-0 p-4 sm:p-5 border-t-2 border-black justify-center">
                    <div class="flex gap-3">
                        <a href="#">
                            <img src="/Images/Barbie.jpeg"
                                class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                        </a>
                        <div class="leading-4 sm:leading-5">
                            <a href="#" class="text-xs sm:text-sm">
                                Scottie
                            </a>
                            <p class="text-xs sm:text-sm text-red-500">Female | 19 Y/O</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main modal -->
        <div id="defaultModal" tabindex="-1" aria-hidden="true"
            class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] max-h-full">
            <div class="relative w-full max-w-2xl max-h-full">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow">
                    <!-- Modal header -->
                    <div class="flex justify-between p-4 border-b border-black rounded-t">
                        <h3 class="items-center text-2xl font-semibold text-gray-900">
                            Post
                        </h3>
                        <button type="button"
                            class="text-black bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white"
                            data-modal-hide="defaultModal">
                            <svg aria-hidden="true" class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20"
                                xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                    clip-rule="evenodd"></path>
                            </svg>
                            <span class="sr-only">Close modal</span>
                        </button>
                    </div>
                    <!-- Modal body -->
                    <div class="p-6">
                        <!-- Isi -->
                        <div class="mb-6">
                            <p class="mb-2 text-base text-black">
                                Isi:
                            </p>
                            <input type="text" id="large-input" placeholder="Menurut kalian..."
                                class="block w-full p-4 text-black border border-black rounded-lg bg-white sm:text-md focus:border-teal-200">
                        </div>

                        <!-- Kategori -->
                        <div class="mb-6">
                            <p class="mb-2 text-base text-black">
                                Kategori:
                            </p>
                            <button id="dropdownDefaultButtonA" data-dropdown-toggle="dropdownA"
                                class="hover:bg-teal-200 rounded-lg w-28 md:w-32 lg:w-40 text-xs md:text-sm lg:text-base justify-between px-4 py-2 text-center inline-flex items-center border border-black"
                                type="button">Kesehatan<svg class="w-4 h-4 ml-2" aria-hidden="true" fill="none"
                                    stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M19 9l-7 7-7-7"></path>
                                </svg>
                            </button>
                        </div>
                        <!-- Dropdown -->
                        <div id="dropdownA"
                            class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-28 md:w-32 lg:w-40 border border-black">
                            <ul class="py-2 text-sm text-gray-700 dark:text-gray-200"
                                aria-labelledby="dropdownDefaultButtonA">
                                <li>
                                    <a
                                        class="block px-4 py-2 m-1 rounded-lg bg-gray-300 text-neutral-900 text-xs md:text-sm lg:text-base">Kesehatan</a>
                                </li>
                                <li>
                                    <a href="#"
                                        class="block px-4 py-2 m-1 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base">Teknologi</a>
                                </li>
                                <li>
                                    <a href="#"
                                        class="block px-4 py-2 m-1 text-neutral-500 hover:text-neutral-900 text-xs md:text-sm lg:text-base">Sains</a>
                                </li>
                            </ul>
                        </div>

                        <!-- Thread -->
                        <form>
                            <label class="block">
                                <span class="mb-2 block text-base font-medium text-black">Thread:</span>
                                <input type="text" placeholder="ex: #CeritaKita #DuniaKerja"
                                    class="w-1/2 border border-black rounded-lg focus:border-teal-200" />
                            </label>
                        </form>
                    </div>
                    <!-- Modal footer -->
                    <div class="flex justify-center p-6 border-t border-black rounded-b">
                        <button data-modal-hide="defaultModal" type="button"
                            class="text-black font-medium rounded-lg text-xl px-5 py-2.5 text-center bg-teal-200 hover:bg-teal-400">Create</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Konten -->
        <div class="content flex-1 md:py-0 md:ml-64">
            <!-- Search Bar -->
            <form class="relative p-10 border-b-2 border-black">
                <div class="absolute inset-y-0 flex items-center pl-5">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
                    </svg>
                </div>
                <input class="w-full pl-16 rounded-full" type="text" placeholder="Cari tren lainnya di Cerita Kita">
            </form>

            <a href="HomePage2.aspx" class="flex pl-10 pr-10 pb-10 pt-5">
                <%--<button class="flex pl-10 pr-10 pb-10 pt-5">--%>
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 25 25" stroke-width="1.5"
                        stroke="currentColor" class="w-7 h-7">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18" />
                    </svg>
                    <p class="pl-2 text-lg">Kembali</p>
                <%--</button>--%>
            </a>

            <article class="w-full pl-10 pr-10 pb-5 border-b-2 border-black">
                <!-- Profile -->
                <div class="flex justify-between">
                    <div class="flex gap-3">
                        <a href="#">
                            <img src="/Images/Barbie.jpeg"
                                class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                        </a>
                        <div class="leading-4 sm:leading-5">
                            <a href="#" class="flex text-sm items-center">
                                Scottie<p class="pl-10 text-xs items-center text-gray-500">~ 8 Minutes ago</p>
                            </a>
                            <p class="text-xs sm:text-sm text-red-500"><%= p.user.gender.name %> | <%= CalculateAge(p.user.dob) %> 19 Y/O</p>
                        </div>
                    </div>
                </div>

                <!-- Body -->
                <div class="pt-5">
                    <p class="text-xs sm:text-sm text-black text-justify"><%--Pertanyaan tentang apakah bapak kucing
                        mengenali anaknya, sangat menarik. Pasalnya, kita pasti familier melihat kucing betina mengasuh
                        anak-anaknya. Namun, kita hampir tidak pernah melihat bapak kucing melakukan hal yang sama.--%>
                        <%= p.isiPost %>
                    </p>
                </div>

                <!-- Reactions -->
                <div class="flex justify-between pt-5">
                    <div class="flex gap-7 pt-1 pb-1">
                        <a href="#" class="w-5 sm:w-6" onchange="likeBtn()">
                            <img src="/Images/heart.png" id="heart">
                        </a>
                        <a href="#" class="w-5 sm:w-6">
                            <img src="/Images/comment.png">
                        </a>
                        <a href="#" class="w-5 sm:w-6">
                            <img src="/Images/share.png">
                        </a>
                    </div>
                   <%-- <div
                        class="rounded-lg p-2 bg-sky-200 border-sky-200 text-sky-600 hover:bg-cyan-600 hover:text-white">--%>
                       <%-- <asp:Button class="text-xs" ID="DeleteButton" runat="server" Text="Hapus" OnClick="DeleteButton_Click" PostBackUrl="~/Views/Content.aspx?postId=<%=  %>"/>--%>
                        <%--<a href="content.html"><p class="text-xs">Read more</p>
                        </a>--%>
                   <%-- </div>--%>
                </div>
            </article>

            <!-- Comment -->
            <div class="justify-between items-center flex pl-10 pr-10 pb-5 pt-5 border-b-2 border-black">
                <div class="flex w-full">
                    <a href="#" class="pr-5">
                        <img src="/Images/Barbie.jpeg"
                            class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                    </a>
                    <asp:TextBox ID="ReplyTextBox" runat="server" class="w-2/3 focus:outline-none" placeholder="Tuliskan balasan anda..."></asp:TextBox>
                    <%--<input class="w-2/3 focus:outline-none" placeholder="Tuliskan balasan anda...">--%>
                </div>
                <asp:Button ID="ReplyButton" runat="server" Text="Balas" class="justify-self-end rounded-lg p-2 bg-sky-200 border-sky-200 text-sky-600 hover:bg-cyan-600 hover:text-white pl-2 pr-2 text-xs" OnClick="ReplyButton_Click1" />
                <%--<button
                    class="justify-self-end rounded-lg p-2 bg-sky-200 border-sky-200 text-sky-600 hover:bg-cyan-600 hover:text-white" onclick="replyButton_Click">
                    <p class="pl-2 pr-2 text-xs">Balas</p>
                </button>--%>
            </div>

            <!-- CommentPage -->
            <%foreach (var r in replies)
                { %>
                <%--<%if (r.parentId == p.id) { %>--%>
                <article class="w-full pl-10 pr-10 pb-5 pt-5">
                    <!-- Profile -->
                    <div class="flex">
                        <div class="flex gap-3">
                            <a href="#">
                                <img src="/Images/Spider-Man.png"
                                    class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                            </a>
                            <div class="leading-4 sm:leading-5">
                                <a href="#" class="flex text-sm items-center">
                                    Naruto<p class="pl-10 text-xs items-center text-gray-500">~ 2 Minutes ago</p>
                                </a>
                                <p class="text-sm text-blue-500">Male | 19 Y/O</p>
                                <!-- Body -->
                                <div class="pt-4">
                                    <p class="text-sm text-black text-justify"><%= r.isiPost %>
                                    </p>
                                </div>
                                <!-- Reactions -->
                                <div class="flex justify-between">
                                    <div class="flex gap-7 pt-2">
                                        <a href="#" class="w-5" onchange="likeBtn()">
                                            <img src="/Images/heart.png" id="heart">
                                        </a>
                                        <a href="#" class="w-5">
                                            <img src="/Images/comment.png">
                                        </a>
                                        <a href="#" class="w-5">
                                            <img src="/Images/share.png">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
           <%--     <%} %>--%>
            <%} %>

            <!-- ReplyCommentPage -->
           <%-- <article class="w-full pl-20 pr-10 pb-5 pt-5">
                <!-- Profile -->
                <div class="flex">
                    <div class="flex gap-3">
                        <a href="#">
                            <img src="Assets/Images/Barbie.jpeg"
                                class="h-9 w-9 sm:h-10 sm:w-10 rounded-full border border-neutral-900">
                        </a>
                        <div class="leading-4 sm:leading-5">
                            <a href="#" class="flex text-sm items-center">
                                Scottie<p class="pl-10 text-xs items-center text-gray-500">~ 22 Seconds ago</p>
                            </a>
                            <p class="text-sm text-red-500">Female | 19 Y/O</p>
                            <!-- Body -->
                            <div class="pt-4">
                                <p class="text-sm text-black text-justify">Bisa jadi
                                </p>
                            </div>
                            <!-- Reactions -->
                            <div class="flex justify-between">
                                <div class="flex gap-7 pt-2">
                                    <a href="#" class="w-5" onchange="likeBtn()">
                                        <img src="Assets/Images/heart.png" id="heart">
                                    </a>
                                    <a href="#" class="w-5">
                                        <img src="Assets/Images/comment.png">
                                    </a>
                                    <a href="#" class="w-5">
                                        <img src="Assets/Images/share.png">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>--%>

        </div>

        <div class="min-h-screen flex w-2/6 items-center justify-center border-l-2 border-b-2 border-black bg-slate-200">
            <h1 class="items-center">ADVERTISEMENTs</h1>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.js"></script>
    <script src="Script.js"></script>
    </form>
</body>
</html>
