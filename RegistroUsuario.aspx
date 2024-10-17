<%@ Page Title="RegistroUsuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Proyecto_AHNA.RegistroUsuario" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="display: flex; flex-direction: column; align-items: center;">
         <head>
        <style>
            .gold-container {
                background-color:rgb(219,179,79); /* Color */
                border: 5px solid #DAA520; /* Un borde más oscuro para el contraste */
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Sombra para darle profundidad */
                border-radius: 8px; /* Esquinas redondeadas */
                padding: 20px; /* Espacio interno */
                text-align: center; /* Alinear texto al centro */
                color:black; /* Color del texto */
                text-shadow:none; /* Sombra del texto */
            }
        </style>
    </head>

    <div class="gold-container">
        <h2>Registro de Usuario</h2>

        <div style="width: 100%; max-width: 300px; margin-bottom: 20px;">
            <label for="txtUsername">Nombre de Usuario:</label>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Ingresa tu nombre de usuario" style="width: 100%;"></asp:TextBox>
        </div>

        <div style="width: 100%; max-width: 300px; margin-bottom: 20px;">
            <label for="txtPassword">Contraseña:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Ingresa tu contraseña" style="width: 100%;"></asp:TextBox>
        </div>

        <div style="width: 100%; max-width: 300px; margin-bottom: 20px;">
            <label for="txtConfirmPassword">Confirmar Contraseña:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirma tu contraseña" style="width: 100%;"></asp:TextBox>
        </div>

        <div style="display: block; margin: 20px auto;">
            <asp:Button 
                ID="btnRegister" 
                runat="server" 
                Text="Registrar" 
                OnClick="btnRegister_Click" 
                CssClass="btn btn-primary" 
                style="display: block; margin: 20px auto;" />
        </div>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message"></asp:Label>
    </div>
</asp:Content>

