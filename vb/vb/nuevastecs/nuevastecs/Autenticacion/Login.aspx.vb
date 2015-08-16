Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Dim cadena As String = "Data Source=USER-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
    'Dim cadena As String = "Data Source=PCD55\SQLEXPRESS;Initial Catalog = NUEVASTECS; Integrated Security=True; User ID=sa; Password=Computadora2014"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

        Dim aux As New NuevasTECS.InsertarUsuario
        Dim conexion As New SqlConnection(cadena)
        Dim nombre As String = ""
        Dim fila As DataRow     'Se defina fila para luego llamar toda la fila para cada usuario de tipo DataRow
        Dim accion As Boolean       'Se define para verificar que pudo acceder a la BDD. Devuelve True o False
        'Llama todas las columnas de la tabla ingreso mediante la variable conexion que tiene las referencias de la conexion a la BDD
        Dim da As New SqlDataAdapter("select nombreUsuario, clave, nombres from usuarios", conexion)
        'El DataSet sirve para crear objetos en memoria como vistas, tablas y relaciones. Se utiliza para
        'acceder a los datos de usuario y contraseña de la tabla ingreso y compararlos con los ingresados por el usuario
        Dim ds As New Data.DataSet
        'Se ejecuta la conexion mediante el da.Fills y este crea una tabla en el DataSet ds con el nombre ingreso
        'que es el mismo de la tabla original. Aqui se puede colocar cualquier nombre a la tabla y no difiere de los datos obtenidos
        da.Fill(ds, "ingreso")

        'Aqui se pregunta por cada fila de la tabla ingreso que se definió en el DataSet y se obtienen el usuario y clave
        'de la tabla original. Hay que tener en cuenta que los nombres de las columnas si deben ser los mismos que en la original
        For Each fila In ds.Tables("ingreso").Rows
            Dim correo = fila("nombreUsuario")
            Dim clave = fila("clave")
            nombre = fila("nombres")
            'Se pregunta si los datos ingresados por el usuarios son correctos
            If (txtNombreUsuario.Text = correo And aux.GetSHA1HashData(txtClave.Text) = clave) Then
                accion = True   'Los datos ingresados son correctos
                Session.Add("correo", correo)
                Session.Add("cedula", clave)
                Exit For    'Sale del for
            Else
                accion = False  'Los datos ingresados son incorrectos
            End If
        Next



        'Se pregunta si el acceso ha sido correcto
        If (accion = True) Then
            MsgBox("Bienvenido " + nombre, MsgBoxStyle.Information)   'Mensaje de bienvenida
            Response.Redirect("http://localhost:24447/Ejemplos/SaludoMast.aspx")   'Redirecciona a otra pagina
            ' Response.Redirect("FichaRegistro.aspx")   'Redirecciona a ficha registro
        Else
            txtNombreUsuario.Text = ""  'Limpia campo clave
            txtClave.Text = ""  'Limpia campo usuario
            MsgBox("Usuario o contraseña incorrectos", MsgBoxStyle.Exclamation)     'Mensaje de error
        End If

    End Sub
End Class