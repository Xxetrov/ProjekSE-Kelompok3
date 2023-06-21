<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="CeritaKita.Views.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daftar - CeritaKita</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.4/flowbite.min.css" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" />
    <link href ="loginStyleSheet.css" rel ="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="flex login-container h-screen items-center justify-center">
                <div>
                    <asp:Image ID="loginlogo" src ="/Images/logo.png" runat="server" Width="500px" />
                    <asp:Label ID="validationLabel" class="text-red-400 text-md font-bold pt-4" runat="server" Text=""></asp:Label>
                </div>
                <div class="rounded-none border login-form border-stone-400 p-8 mx-6 w-96">
                    <h2 class="font-bold text-xl text-center text-neutral-700">Bergabung Dalam Komunitas</h2>
                    <h2 class="font-bold text-xl text-center text-neutral-700">CeritaKita </h2>
                    <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-4 text-sm">Nama pengguna</h4>
                    <asp:TextBox ID="usernameTextBox" class="rounded w-full border border-stone-300 h-8" runat="server"></asp:TextBox>
                    <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-3 text-sm">Email</h4>
                    <asp:TextBox ID="emailTextBox" class="rounded w-full border border-stone-300 h-8" runat="server"></asp:TextBox>
                    <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-3  text-sm">Kata Sandi</h4>
                    <asp:TextBox ID="passwordTextBox" class="rounded w-full border border-stone-300 h-8" runat="server" type="password"></asp:TextBox>
                    <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-3 text-sm">Tanggal Lahir</h4>
                    <asp:TextBox ID="dateTextBox" class="rounded w-9/12 border border-stone-300 h-8" runat="server" type ="date"></asp:TextBox>
                    <h4 class="place-item-start w-10/12 text-slate-600 font-normal pt-3 text-sm">Jenis Kelamin</h4>
                    <asp:DropDownList ID="DropDownList1"  class="rounded border-stone-300 border pl-1.5 w-9/12 h-8" runat="server"></asp:DropDownList>
                    <asp:Button class="rounded bg-origin-content bg-sky-400 w-full login-button mt-8 text-white font-medium place-item-center py-1 tracking-wider" ID="registerButton" runat="server" Text="Daftar" OnClick="registerButton_Click"/>
                    <asp:Button ID="Button1" class="mt-2 text-md text-center underline underline-offset-2 w-full text-sky-400" runat="server" Text="Kembali ke Login page" OnClick="backLogin_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
