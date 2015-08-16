<%@ Page Language="VB" AutoEventWireup="false" CodeFile="reporterdlc.aspx.vb" Inherits="Reportes_reporterdlc" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="datasetInformesTableAdapters.materiasTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_codigo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codigo" Type="String" />
                <asp:Parameter Name="materia" Type="String" />
                <asp:Parameter Name="creditos" Type="Int32" />
                <asp:Parameter Name="carrera" Type="String" />
                <asp:Parameter Name="laboratorio" Type="Boolean" />
                <asp:Parameter Name="activa" Type="Boolean" />
                <asp:Parameter Name="fechaCreacion" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="materia" Type="String" />
                <asp:Parameter Name="creditos" Type="Int32" />
                <asp:Parameter Name="carrera" Type="String" />
                <asp:Parameter Name="laboratorio" Type="Boolean" />
                <asp:Parameter Name="activa" Type="Boolean" />
                <asp:Parameter Name="fechaCreacion" Type="DateTime" />
                <asp:Parameter Name="Original_codigo" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="791px">
            <LocalReport ReportPath="Reportes\Report.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    </form>
</body>
</html>
