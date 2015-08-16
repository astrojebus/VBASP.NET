<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CerrarSesion.aspx.vb" Inherits="CerrarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%
        Session.Contents.RemoveAll()
Session.Abandon()
%>
</head>
<body>
    se ha salido 
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript">
        document.execCommand('ClearAuthenticationCache');
</script>
    </div>
    </form>
</body>
</html>



