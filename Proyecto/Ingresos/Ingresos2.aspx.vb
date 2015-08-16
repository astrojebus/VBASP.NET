
Partial Class Ingresos_Ingresos2
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Dim oProducto As New dsProductosTableAdapters.ProductosTableAdapter
        Dim x As Integer
        x = oProducto.Insert(Me.txtProducto.Text, Me.txtPrecio.Text)
        Me.Label1.Text = ""
        If x > 0 Then
            Me.Label1.Text = "Registro guardado con exito"
            Me.txtPrecio.Text = ""
            Me.txtProducto.Text = ""
            Me.txtProducto.Focus()
        Else
            Me.Label1.Text = "No se pudo guardar el registro"
        End If
        Me.GridView1.DataBind()
    End Sub
End Class
