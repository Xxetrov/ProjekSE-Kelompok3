<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="CeritaKita.Views.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update profile</title>
    <link rel="stylesheet" href="style.css" />
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
            class="sidebar-dekstop fixed inset-y-0 w-48 md:w-64 border-r-4 border-slate-200 drop-shadow-2xl md:translate-x-0 transform-translate-x-full transition duration-200 ease-in-out h-screen overflow-y-auto">
            <a href="index.html">
                <img src="/Images/logo.png" class="p-8">
            </a>
            <nav>
                <a href="HomePage2.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Beranda</a>
                <a href="Explore.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Jelajahi</a>
                <a href="#" data-modal-target="defaultModal" data-modal-toggle="defaultModal"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Unggah
                </a>
                <a href="AboutUs.aspx"
                    class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold">Tentang Kami</a>
                <a href="Update.aspx"
                    class="flex justify-center p-6 bg-sky-200 rounded-r-full hover:transition hover:ease-in-out">Pengaturan</a>

                <asp:Button ID="logoutButton" class="flex justify-center p-6 text-sky-900 rounded-r-full transition duration-200 ease-in-out hover:font-bold w-full" runat="server" Text="Keluar" OnClick="logoutButton_Click" />
                
            </nav>
        </div>

        <!-- Konten -->
        <div class="content flex-1 pt-10 md:py-0 md:ml-64">
            <div class="p-16">
                <img src="/Images/Barbie.jpeg" class="h-9 w-9 sm:h-20 sm:w-20 rounded-full border border-sky-200"/>
                <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-10 text-md">Nama pengguna</h4>
                <asp:TextBox ID="usernameTextBox" class="rounded w-8/12 border border-stone-300 h-10" runat="server"></asp:TextBox>
                <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-4 text-md">Email</h4>
                <asp:TextBox ID="emailTextBox" class="rounded w-8/12 border border-stone-300 h-10" runat="server"></asp:TextBox>
                <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-4 text-md">Kata Sandi</h4>
                <asp:TextBox ID="passwordTextBox" class="rounded w-8/12 border border-stone-300 h-10" runat="server" type="password"></asp:TextBox>
                <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-4 text-md">Tanggal Lahir</h4>
                <asp:TextBox ID="dateTextBox" class="rounded w-4/12 border border-stone-300 h-10" runat="server" type ="date"></asp:TextBox>
                <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-4 text-md">Jenis Kelamin</h4>
                <asp:DropDownList ID="DropDownList1"  class="rounded border-stone-300 border pl-1.5 w-4/12 h-10" runat="server"></asp:DropDownList>
           </div>
            <div class="flex items-center justify-start">
                <asp:Button ID="editButton" class="rounded bg-origin-content mx-16 bg-sky-400 w-1/12 text-white font-medium p-1" runat="server" Text="Edit" />
                <asp:Button ID="saveButton" class="rounded bg-origin-content mx-16 bg-sky-400 w-1/12 text-white font-medium p-1" runat="server" Text="Simpan" />
            </div>
        </div>
    </div>
            
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.js"></script>
    <script src="Script.js"></script>
</body>
</html>
