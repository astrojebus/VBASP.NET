<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagPrincipal.Master" CodeBehind="ej.aspx.vb" Inherits="NuevasTECS.ej" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox runat="server" ID="txtNuevaClave" TextMode="Password" ValidationGroup="Enviar" />
    <act:PasswordStrength ID="txtNuevaClave_PasswordStrength" runat="server" 
    Enabled="True" MinimumNumericCharacters="1" PrefixText="Complejidad: " 
    TargetControlID="txtNuevaClave" TextStrengthDescriptions="Baja;Media;Alta" 
    MinimumLowerCaseCharacters="1" PreferredPasswordLength="6" 
    RequiresUpperAndLowerCaseCharacters="True">
    </act:PasswordStrength>
</asp:Content>
