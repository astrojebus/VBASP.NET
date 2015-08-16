
Partial Class Cuentas_IngresoLogin
    Inherits System.Web.UI.Page
  
    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim oUsuarios As New dsUsuariosTableAdapters.Usuarios1TableAdapter

        Dim claveEncriptada As String
        claveEncriptada = SEMINARIO.CEncriptar.fnEncriptarSHA1(Me.txtClave.Text)
        Dim ds As New dsUsuarios.Usuarios1DataTable
        Dim fila As System.Data.DataRow
        'vacio el adaptadora
        oUsuarios.ClearBeforeFill = True
        'lleno el dataset
        Me.lblMensaje.Text = claveEncriptada
        oUsuarios.Fill(ds, Me.txtLogin.Text, claveEncriptada)



        Dim sw As Integer = 0
        For Each fila In ds.Rows
            sw = 1
            'si entra en el for esta en la tabla usuarios
            Session("IdUsuario") = fila("IdUsuario")
            Session("login") = fila("login")
            Exit For

        Next
        If sw = 1 Then
            Me.lblMensaje.Text = "hhe"
       
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Me.txtLogin.Text, False)
        End If




    End Sub
End Class
