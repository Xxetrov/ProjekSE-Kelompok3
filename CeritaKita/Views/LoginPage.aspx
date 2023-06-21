<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CeritaKita.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Cerita kita </title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.css" rel="stylesheet" />
    <link href ="loginStyleSheet.css" rel ="stylesheet" />
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="flex login-container h-screen items-center justify-center">
            <div class="login-image">
                <asp:Image ID="loginlogo" src ="/Images/logo.png" runat="server" Width="500px" />
                <asp:Label ID="errorLabel" class="text-red-400 text-md font-bold pt-4" runat="server" Text=" "></asp:Label>
            </div>
            <div class="rounded-none border border-stone-400 p-8 mx-6 w-96">
                <h2 class="font-bold text-xl text-center text-neutral-700">Masuk ke CeritaKita </h2>
                <h4 class="text-slate-600 font-normal pt-8 text-sm">Nama pengguna:</h4>
                <asp:TextBox ID="usernameTextBox" class="rounded w-full border border-stone-300 h-10" runat="server"></asp:TextBox>
                <h4 class="text-slate-600 font-normal pt-3 text-sm">Password:</h4>
                <asp:TextBox ID="passwordTextBox" class="rounded w-full border border-stone-300 h-10" runat="server" type="password"></asp:TextBox>
                <asp:Button ID="loginButton" class="rounded bg-origin-content bg-sky-400 w-full mt-8 text-white font-medium py-1 " runat="server" Text="Masuk" OnClick="loginButton_Click" />
                <h4 class=" text-md pt-2.5 text-center">Belum punya akun? <asp:Button ID="redirectRegister" runat="server" class="text-md text-sky-400 underline underline-offset-2" Text="Daftar disini" OnClick="redirectRegister_Click" /></h4>
            </div>
        </div>
    </form>
</body>
</html>

