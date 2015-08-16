<%@ Page Language="VB" MasterPageFile="~/Maestro/Menu.master" AutoEventWireup="false" CodeFile="saludos.aspx.vb" Inherits="ejemplos_saludos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <div>
    
        Bienvenido
        <br />
        <br />
        Ingresa tu nombre:<asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server">Aceptar</asp:LinkButton>
        <p>
            &nbsp;</p>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>

</asp:Content>