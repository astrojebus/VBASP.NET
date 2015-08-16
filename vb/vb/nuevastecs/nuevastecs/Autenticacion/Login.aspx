<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Maestras/PagRegistro.Master" CodeBehind="Login.aspx.vb" Inherits="NuevasTECS.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="shortcut icon" href="../favicon.ico" />
    <link rel="stylesheet" type="text/css" href="../Estilos/LoginStyles/demo.css" />
    <link rel="stylesheet" type="text/css" href="../Estilos/LoginStyles/style.css" />
    <link rel="stylesheet" type="text/css" href="../Estilos/LoginStyles/animate-custom.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="height: 450px;">
        <section>
            <div id="container_demo">
                <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                <a class="hiddenanchor" id="toregister"></a>
                <a class="hiddenanchor" id="tologin"></a>
                <div id="wrapper">
                    <div id="login" class="animate form">
                        <form action="mysuperscript.php" autocomplete="on">
                            <h1>Iniciar Sesión</h1>
                            <p>
                                <label for="username" class="uname" data-icon="u">Nombre de usuario o Email</label>
                                <asp:TextBox ID="txtNombreUsuario" runat="server" placeholder="myusername or mymail@mail.com" required />
                            </p>
                            <p>
                                <label for="password" class="youpasswd" data-icon="p">Contraseña</label>
                                <asp:TextBox ID="txtClave" runat="server" placeholder="********" TextMode="Password" required />
                            </p>
                            <p class="keeplogin">
                                <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
                                <label for="loginkeeping">Recordar datos</label>
                            </p>
                            <p class="login button">
                                <asp:Button ID="btnIngresar" runat="server" Text="ENTRAR" />
                            </p>
                            <p class="change_link">
                                No estás registrado ?
									<a href="http://localhost:24447/Autenticacion/RegistroUsuario.aspx" class="to_register">Unete</a>
                            </p>
                        </form>
                    </div>


                </div>
            </div>
        </section>
    </div>

</asp:Content>
