
Partial Class ejemplos_ingresomaterias2
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click

        'validar las entrads
        Me.lblMensaje.Text = ""
        If Me.txtCodigo.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa el codigo"
            Me.txtCodigo.Focus()
            Exit Sub
        End If

        If Me.txtMateria.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa materia"
            Me.txtMateria.Focus()
            Exit Sub
        End If


        If Me.txtCreditos.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa creditos"
            Me.txtCreditos.Focus()
            Exit Sub
        End If

        If Me.cmbLaboratorio.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa laboratorio"
            Me.cmbLaboratorio.Focus()
            Exit Sub
        End If

        If Me.cmbActiva.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa activa"
            Me.cmbActiva.Focus()
            Exit Sub
        End If


        If Me.txtfechaCreacion.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa fecha"
            Me.txtfechaCreacion.Focus()
            Exit Sub
        End If

        If Not IsDate(Me.txtfechaCreacion.Text) Then
            Me.lblMensaje.Text = "la fecha es incorrecta (dd/mm/aaaa)"
            Me.txtfechaCreacion.Focus()
            Exit Sub
        End If

        Try


            Dim oMat As New Septimo.CMaterias
            Dim cad As String = ""
            cad = oMat.guardar(Me.txtCodigo.Text, Me.txtMateria.Text, Me.txtCreditos.Text, Me.txtCarrera.Text, Me.cmbLaboratorio.Text, Me.cmbActiva.Text, Me.txtfechaCreacion.Text)
            Me.lblMensaje.Text = cad
            Me.GridView1.DataBind()
        Catch ex As Exception
            Me.lblMensaje.Text = ex.Message.ToString
        End Try


    End Sub
End Class
