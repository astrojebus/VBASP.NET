
Partial Class Informes_porNFactura_resultado
    Inherits System.Web.UI.Page
    Dim cr As SEMINARIO.crPorNFactura

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim ad As New dsInformesTableAdapters.porNFacturaTableAdapter
        Dim ds As New dsInformes

        'vacio el adaptador
        ad.ClearBeforeFill() = True
        'lleno el dataset
        ad.FillxNFactura(ds.porNFactura, Session("NFactura"))
        'probando co la facrura 0017101
        'declaro el objeto de la clase nfactura
        cr = New SEMINARIO.crPorNFactura
        cr.SetDataSource(ds) 'establcer el origen dae datos
        'asigno el reporte a crystal report viewr
        Me.CrystalReportViewer1.ReportSource = cr


    End Sub
End Class
