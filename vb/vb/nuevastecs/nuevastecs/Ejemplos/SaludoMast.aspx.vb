Public Class SaludoMast
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub lbAceptar_Click(sender As Object, e As EventArgs) Handles lbAceptar.Click
        lblMensaje.Text = "Buen dia: " & txtNombre.Text

        Response.Write("Tu nombre tiene: " & txtNombre.Text.Length & " caracteres... ")
    End Sub
End Class