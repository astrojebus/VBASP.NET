
Partial Class ejemplos_listadomanual
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkMostrar_Click(sender As Object, e As EventArgs) Handles LinkMostrar.Click
        Dim ob As New Septimo.CEstudiantes
        Me.GridView1.DataSource = ob.listadoEstudiantes().Tables(0)
        Me.GridView1.DataBind()
    End Sub
End Class
