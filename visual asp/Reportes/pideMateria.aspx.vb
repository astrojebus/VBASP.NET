
Partial Class Reportes_pideMateria
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Session("materia") = Me.DropDownList1.Text
        Response.Redirect("reporteRDLCporMateria.aspx")
    End Sub
End Class
