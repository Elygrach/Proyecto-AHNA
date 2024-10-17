<%@ Page Title="Bienvenidos"Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bienvenidos.aspx.cs" Inherits="Proyecto_AHNA.Bienvenidos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="jumbotron" style="background-image: url('resources/Home.jpg');  background-size: cover; background-position:center; min-height: 550px">
         <div>
        <h1 style="text-align:left; min-height: 100px; color: rgb(184, 134, 11); text-shadow: -7px -5px 5px rgba(0, 0, 0, 0.4); font-weight:700;"> BIENVENIDOS </h1>
    </div>
         <div style="position: fixed; bottom: 70px; right: 100px;">
    <button type="button" class="btn btn-primary" onclick="window.location.href='Default.aspx';">Ingresar</button>
</div>

    </div>
    </asp:Content>