<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="SaludoMast.aspx.vb" Inherits="NuevasTECS.SaludoMast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        Bienvenido.<br />
        Ingresa tu nombre:
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        &nbsp;<asp:LinkButton ID="lbAceptar" runat="server">Aceptar</asp:LinkButton>
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>    

</asp:Content>
