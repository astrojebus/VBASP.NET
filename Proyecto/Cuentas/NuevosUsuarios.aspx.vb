
Partial Class Cuentas_nusuariost
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Dim oUsuario As New dsUsuariosTableAdapters.UsuariosTableAdapter
        Dim claveEncriptada As String
        claveEncriptada = SEMINARIO.CEncriptar.fnEncriptarSHA1(Me.txtClave.Text)
        Dim x As Integer = 0
        x = oUsuario.Insert(Me.txtNombre.Text, claveEncriptada)
        Me.Label1.Text = ""

        If x > 0 Then
            Me.Label1.Text = "Usuario creado con éxito.."
        Else
            Me.Label1.Text = "Error al crear el usuario"
        End If
    End Sub
End Class
