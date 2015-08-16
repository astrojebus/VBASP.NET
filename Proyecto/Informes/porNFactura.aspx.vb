
Partial Class Informes_porNFactura
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Me.Label1.Text = ""
        'validamos si el usuario ingreso un numero de factura
        If Me.txtFactura.Text.Length = 0 Then
            Me.Label1.Text = " Por favor ingrese el numero de factura"
            Exit Sub
        End If
        'creamos la variable de sesion para guardar el numero de factura
        Session("NFactura") = Me.txtFactura.Text
        Response.Redirect("porNFactura_resultado.aspx", True)


    End Sub
End Class
