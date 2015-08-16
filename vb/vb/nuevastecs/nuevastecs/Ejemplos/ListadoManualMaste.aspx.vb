Public Class ListadoManualMaste
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    

    Protected Sub linkMostrarMaterias_Click(sender As Object, e As EventArgs) Handles linkMostrarMaterias.Click
        Dim objeto As New Septimo.Materias
        GridView3.Visible = True
        GridView3.DataSource = objeto.listadoMaterias().Tables("Materias")
        GridView3.DataBind()
    End Sub

    Protected Sub linkOcultarEstudiantes_Click(sender As Object, e As EventArgs) Handles linkOcultarEstudiantes.Click
        GridView1.Visible = False
        GridView2.Visible = False
    End Sub

    Protected Sub linkOcultarMaterias_Click(sender As Object, e As EventArgs) Handles linkOcultarMaterias.Click
        GridView3.Visible = False
    End Sub

    Protected Sub linkMostrarNotas_Click(sender As Object, e As EventArgs) Handles linkMostrarNotas.Click
        Dim objeto As New Septimo.Notas
        GridView4.Visible = True
        GridView4.DataSource = objeto.listadoNotas().Tables("Notas")
        GridView4.DataBind()
    End Sub

    Protected Sub linkOcultarNotas_Click(sender As Object, e As EventArgs) Handles linkOcultarNotas.Click
        GridView4.Visible = False
    End Sub

    Protected Sub linkMostrar_Click(sender As Object, e As EventArgs) Handles linkMostrar.Click

    End Sub
End Class