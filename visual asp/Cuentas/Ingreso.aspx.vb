
Partial Class cuentas_ingreso
    Inherits System.Web.UI.Page

    Protected Sub txtGuardar_Click(sender As Object, e As EventArgs) Handles txtGuardar.Click

        If Me.txtLogin.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese el Login..."
            Me.txtLogin.Focus()
            Exit Sub
        End If

        If Me.txtApellidos.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese los Apellidos..."
            Me.txtApellidos.Focus()
            Exit Sub
        End If

        If Me.txtNombres.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese los Nombres..."
            Me.txtNombres.Focus()
            Exit Sub
        End If

        If Me.txtClave.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese la Clave..."
            Me.txtClave.Focus()
            Exit Sub
        End If

        If Me.txtConfirme.Text.Length = 0 Then
            Me.lblMensaje.Text = "Por favor ingrese la matricula..."
            Me.txtConfirme.Focus()
            Exit Sub
        End If

        If Not Me.txtClave.Text = Me.txtConfirme.Text Then
            Me.lblMensaje.Text = "Las Claves no coinciden..."
            Exit Sub
        End If

        Try
            Dim oEst As New Usuarios.CUsuarios
            Dim cad As String = ""
            cad = oEst.guardar(Me.txtLogin.Text, _
                               Me.txtClave.Text, _
                            Me.txtApellidos.Text, _
                            Me.txtNombres.Text)
            Me.lblMensaje.Text = cad
            'Me.GridView1.DataBind()
        Catch ex As Exception
            Me.lblMensaje.Text = ex.Message.ToString
        End Try
    End Sub
End Class
