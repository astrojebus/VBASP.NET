
Imports CrystalDecisions.CrystalReports.Engine
Partial Class Reportes_reporteEstudiantes
    Inherits System.Web.UI.Page

    Dim cr As PUCESE.crEstudiantes

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ad As New datasetEstudiantesTableAdapters.estudiantesTableAdapter
        Dim ds As New datasetEstudiantes

        ad.ClearBeforeFill = True
        ad.Fill(ds.estudiantes) 'cargar el dataset

        'mostrar el informe

        cr = New PUCESE.crEstudiantes
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
