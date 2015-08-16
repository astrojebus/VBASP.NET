
Partial Class cuentas_Login
    Inherits System.Web.UI.Page

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

        Me.lblMensaje.Text = ""

        If Me.txtLogin.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese el Login..."
            Me.txtLogin.Focus()
            Exit Sub
        End If

        If Me.txtClave.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese la Clave..."
            Me.txtClave.Focus()
            Exit Sub
        End If

        Dim oUsuario As New Usuarios.CUsuarios
        Dim x As String = ""
        x = oUsuario.valida(Me.txtLogin.Text, Me.txtClave.Text)
        If x = "existe" Then
            Me.lblMensaje.Text = "Acceso Correcto"
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Me.txtLogin.Text, False)
        Else
            Me.lblMensaje.Text = "Usuario no válido."
        End If



    End Sub
End Class
