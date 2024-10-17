<%@ Page Title="Administrador" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministradorPage.aspx.cs" Inherits="Proyecto_AHNA.AdministradorPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <div class="jumbotron" style="background-image: url('resources/Home.jpg'); background-size: cover; background-position: center; min-height: 350px">
        <!--h1>ASP.NET</!--h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <!--p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></!-->
    </div>
    <div>
        <h1 style="text-align:center; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:bold;">Bienvenido Administrador</h1>
        <p style="text-align:center; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:bold;">&nbsp;</p>
    </div>
    <div class="container">
        <form id="loginForm" onsubmit="return validateForm();">
            <div style="display: flex; flex-direction: column; align-items: center; text-align: center;">
                <label for="username" style="margin-bottom: 10px;">Nombre de usuario:</label>
                <input type="text" id="username" name="username" placeholder="Ingresa tu usuario"
                       style="text-align: center; background-image: url('resources/manage_accounts_24dp_5f6368.png'); background-repeat: no-repeat; background-size: 30px 30px; background-position: 10px center; padding-left: 40px; min-height: 40px; width: 100%; max-width: 300px;">
            </div>

            <div style="display: flex; flex-direction: column; align-items: center; text-align: center;">
                <label for="password" style="margin-bottom: 10px;">Contraseña:</label>
                <input type="password" id="password" name="password" placeholder="Ingresa tu contraseña"
                       style="text-align: center; background-image: url('resources/candado.png'); background-repeat: no-repeat; background-size: 30px 30px; background-position: 10px center; padding-left: 40px; min-height: 40px; width: 100%; max-width: 300px;">
            </div>

            <button type="button" style="display: block; margin: 20px auto;" class="btn btn-primary" onclick="validateForm();">Ingresar</button>

            <div id="errorMessage" class="error-message" style="display: none; color: red; text-align: center; margin-top: 10px;"></div>
        </form>
    </div>

    <script>
        function validateForm() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const errorMessage = document.getElementById('errorMessage');

            // Aquí defines la contraseña correcta
            const correctPassword = '230002456'; // Reemplaza con la contraseña que desees

            if (!username || !password) {
                errorMessage.textContent = 'Error: Todos los campos son obligatorios.';
                errorMessage.style.display = 'block'; // Mostrar el mensaje de error
                return false; // Evitar el envío del formulario
            } else if (password !== correctPassword) {
                errorMessage.textContent = 'Error: La contraseña es incorrecta.'; // Mensaje de error para contraseña incorrecta
                errorMessage.style.display = 'block'; // Mostrar el mensaje de error
                return false; // Evitar el envío del formulario
            } else {
                errorMessage.style.display = 'none'; // Ocultar el mensaje de error
                // Redirigir a la página RegistroUsuario.aspx si los datos son correctos
                window.location.href = 'RegistroUsuario.aspx'; // Cambia esto a la página deseada
                return true; // Permitir el envío del formulario
            }
        }
    </script>
</asp:Content>
