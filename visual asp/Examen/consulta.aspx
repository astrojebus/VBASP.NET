<%@ Page Title="" Language="VB" MasterPageFile="~/Examen Maestro/MenuMaestro.master" AutoEventWireup="false" CodeFile="consulta.aspx.vb" Inherits="Examen_consulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6">
            <asp:FormView ID="FormView1" runat="server">
            </asp:FormView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

