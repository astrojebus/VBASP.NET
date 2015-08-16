
Imports CrystalDecisions.CrystalReports.Engine
Partial Class Reportes_reporteMaterias
    Inherits System.Web.UI.Page

    Dim cr As PUCESE.crMaterias

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ad As New datasetInformesTableAdapters.materiasTableAdapter
        Dim ds As New datasetInformes

        ad.ClearBeforeFill = True
        ad.Fill(ds.materias) 'cargar el dataset

        'mostrar el informe

        cr = New PUCESE.crMaterias
        cr.SetDataSource(ds)
        Me.CrystalReportViewer1.ReportSource = cr


    End Sub

    Protected Sub Page_Unload(sender As Object, e As EventArgs) Handles Me.Unload
        'descargar de memoria

        Me.CrystalReportViewer1.Dispose()
        Me.CrystalReportViewer1 = Nothing
        cr.Close()
        cr.Dispose()

    End Sub

    Protected Sub CrystalReportViewer1_Init(sender As Object, e As EventArgs) Handles CrystalReportViewer1.Init

    End Sub
End Class
