
Partial Class Reportes_ReporteporEstudiante
    Inherits System.Web.UI.Page
    Dim cr As PUCESE.crMaterias

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub Page_Unload(sender As Object, e As EventArgs) Handles Me.Unload
   
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ad As New datasetNotasInformesTableAdapters.notasTableAdapter()

        Dim ds As New datasetNotasInformes
        Dim idMatricula As String = (DropDownList1.Text)
        Me.TextBox1.Text = idMatricula
        ad.ClearBeforeFill = True
        ad.Fill(ds.notas, idMatricula)



        cr.SetDataSource(ds)
        Me.CrystalReportViewer1.ReportSource = cr
    End Sub

    Protected Sub Button1_Load(sender As Object, e As EventArgs) Handles Button1.Load
      

        cr = New PUCESE.crMaterias



    End Sub
End Class
