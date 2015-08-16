
Partial Class ejemplos_listadomanualmaterias
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Dim ob As New Septimo.CMaterias
        Me.GridView1.DataSource = ob.listadoMaterias().Tables(0)
        Me.GridView1.DataBind()
    End Sub
End Class
