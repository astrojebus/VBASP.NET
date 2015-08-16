
Partial Class ejemplos_IngresoEstuMaestro
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click

        'validar las entrads
        Me.lblMensaje.Text = ""
        If Me.txtMatricula.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa la matricula"
            Me.txtMatricula.Focus()
            Exit Sub
        End If

        If Me.txtApellidos.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa apellidos"
            Me.txtApellidos.Focus()
            Exit Sub
        End If


        If Me.txtNombres.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa nombres"
            Me.txtNombres.Focus()
            Exit Sub
        End If

        If Me.cmbGenero.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa genero"
            Me.cmbGenero.Focus()
            Exit Sub
        End If


        If Me.txtFechaNac.Text.Length = 0 Then
            Me.lblMensaje.Text = "por favor ingresa fecha"
            Me.txtFechaNac.Focus()
            Exit Sub
        End If

        If Not IsDate(Me.txtFechaNac.Text) Then
            Me.lblMensaje.Text = "la fecha es incorrecta (dd/mm/aaaa)"
            Me.txtFechaNac.Focus()
            Exit Sub
        End If

        Try


            Dim oEst As New Septimo.CEstudiantes
            Dim cad As String = ""
            cad = oEst.guardar(Me.txtMatricula.Text, Me.txtApellidos.Text, Me.txtNombres.Text, Me.cmbGenero.Text, Me.txtFechaNac.Text)
            Me.lblMensaje.Text = cad
            Me.GridView1.DataBind()

        Catch ex As Exception
            Me.lblMensaje.Text = ex.Message.ToString
        End Try


    End Sub
End Class
