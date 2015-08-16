
Imports CrystalDecisions.CrystalReports.Engine
Partial Class Reportes_reporteporCarrera
    Inherits System.Web.UI.Page

    Dim cr As PUCESE.crMaterias
    Dim cr2 As PUCESE.crMaterias2

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ad As New datasetInformesTableAdapters.materiasTableAdapter
        Dim ds As New datasetInformes

        ad.ClearBeforeFill = True
        ad.Fill(ds.materias) 'cargar el dataset

        'mostrar el informe

        cr = New PUCESE.crMaterias
        cr2 = New PUCESE.crMaterias2
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

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ad As New datasetCarrerasTableAdapters.materias1TableAdapter
        Dim ds As New datasetCarreras
        Dim idCarrera As String = (DropDownList1.Text)
        Me.TextBox1.Text = idCarrera
        ad.ClearBeforeFill = True
        ad.Fill(ds.materias1, idCarrera)



        cr2.SetDataSource(ds)
        Me.CrystalReportViewer1.ReportSource = cr2
    End Sub
End Class
