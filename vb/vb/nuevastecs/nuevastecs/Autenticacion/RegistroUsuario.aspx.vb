Public Class RegistroUsuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click

        Dim auxInsert As New NuevasTECS.InsertarUsuario
        Dim resultado As String = ""

        If txtClave.Text <> txtConfirmaClave.Text Then
            MsgBox("La clave debe ser igual", MsgBoxStyle.Critical)
            Exit Sub
        End If

        resultado = auxInsert.registrarUsuario(txtNombreUsuario.Text, auxInsert.GetSHA1HashData(txtClave.Text), txtNombres.Text, txtApellidos.Text)

        MsgBox(resultado)

    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        txtNombreUsuario.Text = ""
        txtClave.Text = ""
        txtConfirmaClave.Text = ""
        txtNombres.Text = ""
        txtApellidos.Text = ""
    End Sub
End Class