<%@ Page Title="" Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="arancelfecha_inicio.aspx.vb" Inherits="Consultas_arancelfecha_inicio" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 263px;
        }
        .auto-style4 {
            width: 263px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        LISTADO DE ARANCELES POR FECHA<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Seleccionar el arancel</td>
            <td class="auto-style2">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataListaArancel" TypeName="dsVentasTableAdapters.ArancelTableAdapter"></asp:ObjectDataSource>
                <asp:DropDownList ID="cmbArancel" runat="server" DataSourceID="ObjectDataSource1" DataTextField="NombreArancel" DataValueField="NombreArancel" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fecha inicio</td>
            <td>
                <asp:TextBox ID="txtfechainicio" runat="server" Width="308px"></asp:TextBox>
                <asp:CalendarExtender ID="txtfechainicio_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtfechainicio" PopupButtonID="txtfechainicio" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fecha final</td>
            <td>
                <asp:TextBox ID="txtfechafinal" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="txtfechafinal_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtfechafinal" Format="dd/MM/yyyy">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Mostrar</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

