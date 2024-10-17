<%@ Page Title="Administrador" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuarioPage.aspx.cs" Inherits="Proyecto_AHNA.UsuarioPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
    <div class="jumbotron" style="background-image: url('resources/Home.jpg');  background-size: cover; background-position: center; min-height: 350px">
        <!--h1>ASP.NET</!--h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <!--p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></!-->
    </div>
    <div>
        <h1 style="text-align:center; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:bold;">Bienvenido Colaborador</h1>
        <p style="text-align:center; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:bold;">&nbsp;</p>
       
    </div>
   <div class="container">
    <form>
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
       
        <button type="button" style="display: block; margin: 20px auto;" class="btn btn-primary">Ingresar</button>

    </form>
</div>

   

</asp:Content>

