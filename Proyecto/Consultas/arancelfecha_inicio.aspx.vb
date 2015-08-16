
Partial Class Consultas_arancelfecha_inicio
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        'creando variables de sesion
        Session("arancel") = Me.cmbArancel.SelectedValue
        Session("fechai") = Me.txtfechainicio.Text
        Session("fechaf") = Me.txtfechafinal.Text


        Response.Redirect("resultadoAranceles.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub txtfechainicio_TextChanged(sender As Object, e As EventArgs) Handles txtfechainicio.TextChanged

    End Sub

    Protected Sub txtfechafinal_TextChanged(sender As Object, e As EventArgs) Handles txtfechafinal.TextChanged

    End Sub
End Class
