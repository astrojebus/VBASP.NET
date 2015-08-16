Imports CrystalDecisions.CrystalReports.Engine

Public Class rptMateriasRespuesta
    Inherits System.Web.UI.Page

    Dim cr As Septimo.crMaterias

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ta As New dsReportesTableAdapters.materiaTableAdapter
        Dim ds As New dsReportes

        ta.ClearBeforeFill = True
        ta.Fill(ds.materia)     'Cargar el dataset

        'Mostrar el informeç
        cr = New Septimo.crMaterias
        cr.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = cr

    End Sub


    Private Sub rptMateriasRespuesta_Unload(sender As Object, e As EventArgs) Handles Me.Unload

        CrystalReportViewer1.Dispose()
        CrystalReportViewer1 = Nothing
        cr.Close()
        cr.Dispose()

    End Sub


End Class