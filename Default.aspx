<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_AHNA._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url('resources/Home.jpg');  background-size: cover; background-position:center; min-height: 350px">
        <!--h1>ASP.NET</!--h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <!--p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></!-->
    </div>
    
    <div>
        <h1 style="text-align:center; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:bold;">Bienvenidos, seleccione una opción: </h1>
    </div>

    <div class="row  justify-content-center">
        <div class="col-md-6 text-center">
           <p style="width:50%; height:30px;margin-left:100px"> 
               <a class="btn btn-default"href="AdministradorPage.aspx" style="background-color: rgb(219,179,79);"><strong>Administrador</strong> </a>
           </p> 

        </div>
        <div class="col-md-6 text-center">
            <p style="width:50%; height:30px; margin-left:50px">
                <a class="btn btn-default" href="UsuarioPage.aspx" style="background-color: rgb(219,179,79);"><strong>Usuario</strong></a>
            </p>
        </div>

    <div style="text-align: right; margin: 30px 0;"> <!-- Se eliminó el margen negativo para mejorar la alineación -->
    <button type="button" class="btn btn-primary"onclick="window.location.href='Bienvenidos.aspx';">Cerrar</button></div>


        <!--div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </!--div-->
    
    </div>
</asp:Content>
