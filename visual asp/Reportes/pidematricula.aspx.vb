
Partial Class Reportes_pidematricula
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session("matricula") = Me.TextBox1.Text
        Response.Redirect("reportepormatricula.aspx")
    End Sub
End Class
