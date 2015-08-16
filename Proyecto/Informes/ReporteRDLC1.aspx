<%@ Page Language="VB" MasterPageFile="~/Maestro/maestra.master" AutoEventWireup="false" CodeFile="ReporteRDLC1.aspx.vb" Inherits="Informes_Default" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="466px">
            <LocalReport ReportPath="Informes\Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource2" Name="dsInformeRDLC" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:seminarioConnectionString %>" SelectCommand="SELECT [idProducto], [nombreProducto], [precioVenta] FROM [Productos]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:seminarioConnectionString %>" SelectCommand="SELECT [IdDetalleVentas], [IdVentas], [IdArancel], [NombreArancel], [Unidades], [ValorUnitario], [ValorTotal] FROM [DetalleVentas]"></asp:SqlDataSource>
            
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
            
</asp:Content>