
Partial Class Examen_IngresoProductos
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        'validar las entrads
        Me.lblMensaje.Text = ""
        If Me.TextBox1.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa el producto"
            Me.TextBox1.Focus()
            Exit Sub
        End If

        If Me.TextBox2.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa fecha de registro"
            Me.TextBox2.Focus()
            Exit Sub
        End If


        If Me.TextBox3.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa precio compra"
            Me.TextBox3.Focus()
            Exit Sub
        End If

        If Me.TextBox4.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa precio venta"
            Me.TextBox4.Focus()
            Exit Sub
        End If


        If Me.TextBox5.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa existencias minimas"
            Me.TextBox5.Focus()
            Exit Sub
        End If

        If Me.TextBox6.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa existencias maximas"
            Me.TextBox6.Focus()
            Exit Sub
        End If

        If Me.cmbiva.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa iva"
            Me.cmbiva.Focus()
            Exit Sub
        End If

        If Me.cmbdescuento.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa activa"
            Me.cmbdescuento.Focus()
            Exit Sub
        End If



        If Not IsDate(Me.TextBox2.Text) Then
            Me.lblMensaje.Text = "la fecha es incorrecta (dd/mm/aaaa)"
            Me.TextBox2.Focus()
            Exit Sub
        End If

        Try


            Dim oPro As New CProductos
            Dim cad As String = ""
            cad = oPro.guardar(Me.TextBox1.Text, Me.TextBox2.Text, Me.TextBox3.Text, Me.TextBox4.Text, Me.TextBox5.Text, Me.TextBox6.Text, Me.cmbiva.Text, Me.cmbdescuento.Text, Me.cmbestado.Text)
            Me.lblMensaje.Text = cad

        Catch ex As Exception
            Me.lblMensaje.Text = ex.Message.ToString
        End Try


    End Sub
End Class
