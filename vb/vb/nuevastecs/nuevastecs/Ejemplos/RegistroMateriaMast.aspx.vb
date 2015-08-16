Public Class RegistroMateriaMast
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        If txtMateria.Text.Length = 0 Then
            lblMensaje.Text = "Ingrese materia"
            txtMateria.Focus()
            Exit Sub
        ElseIf txtCreditos.Text.Length = 0 Then
            lblMensaje.Text = "Ingrese # creditos "
            txtCreditos.Focus()
            Exit Sub
        ElseIf txtCarrera.Text.Length = 0 Then
            lblMensaje.Text = "Ingrese nombre carrera"
            txtCarrera.Focus()
            Exit Sub
        ElseIf lstLaboratorio.Text.Length = 0 Then
            lblMensaje.Text = "Seleccione laboratorio"
            lstLaboratorio.Focus()
            Exit Sub
        ElseIf lstActiva.Text.Length = 0 Then
            lblMensaje.Text = "Seleccione si esta activa"
            lstActiva.Focus()
            Exit Sub
        ElseIf txtFechaCreacion.Text.Length = 0 Then
            lblMensaje.Text = "Ingrese fecha creacion"
            txtFechaCreacion.Focus()
            Exit Sub
        Else
            lblMensaje.Text = ""
        End If

        Dim insertarMaterias As New Septimo.Materias
        Dim resultado As String = ""

        Dim creditos As Integer = 0
        Dim fecha As Date

        creditos = Integer.Parse(txtCreditos.Text)
        fecha = Date.Parse(txtFechaCreacion.Text)

        resultado = insertarMaterias.insertarMaterias(txtMateria.Text, creditos, txtCarrera.Text, lstLaboratorio.Text, lstActiva.Text, fecha)
        txtMateria.Text = ""
        txtCreditos.Text = ""
        txtCarrera.Text = ""
        lstLaboratorio.Text = ""
        lstActiva.Text = ""
        txtFechaCreacion.Text = ""
        lblMensaje.Text = resultado
        GridView1.DataBind()
    End Sub
End Class