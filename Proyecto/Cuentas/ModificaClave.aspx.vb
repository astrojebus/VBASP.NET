
Partial Class Cuentas_ModificaClave
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Me.Label1.Text = ""

        If Me.txtClave1.Text = "" Then
            Me.Label1.Text = "Ingrese la clave"
            Exit Sub 'abando la ejecucion


        End If

        If Me.txtClave1.Text <> Me.txtClave2.Text Then
            Me.Label1.Text = "Las claves son diferentes"
            Exit Sub
        End If

        Dim oUsuario As New dsUsuariosTableAdapters.UsuariosTableAdapter
        Dim claveEncriptada As String
        claveEncriptada = SEMINARIO.CEncriptar.fnEncriptarSHA1(txtClave1.Text)
        Dim x As Integer = 0
        x = oUsuario.UpdateClaveIdUsuario(claveEncriptada, Session("IdUsuario"))
        If x > 0 Then
            Me.Label1.Text = "Clave modificada con exito"
        Else
            Me.Label1.Text = "No se pudo modificar"
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '   Session("login") = ("jbusla") 'borrar
        '  Session("IdUsuario") = 1        'borrar
        Me.lblLogin.Text = Session("login")
    End Sub
End Class
