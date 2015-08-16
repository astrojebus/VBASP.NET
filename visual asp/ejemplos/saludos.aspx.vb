
Partial Class ejemplos_saludos
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Me.Label1.Text = "Buen dia" & Me.txtnombre.Text
        Response.Write("Tu nombre tiene: " & Me.txtnombre.Text.Length & " caracteres ")
    End Sub
End Class
