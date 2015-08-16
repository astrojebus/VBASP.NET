Imports System.Data.SqlClient

Namespace Septimo

    Public Class Estudiantes

        'Dim cadena As String = "Data Source=TRANSPORTE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;User ID=sa;Password=1234"
        'Dim cadena As String = "Data Source=GANCOCE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        Dim cadena As String = "Data Source=USER-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        'Dim cadena As String = "Data Source=PCD55\SQLEXPRESS;Initial Catalog = NUEVASTECS; Integrated Security=True; User ID=sa; Password=Computadora2014"


        Public Function listadoEstudiantes() As DataSet

            Dim conexion As New SqlConnection(cadena)

            conexion.Open()
            Dim pa_listadoEstudiantes As New SqlCommand("pa_listadoEstudiantes", conexion)

            pa_listadoEstudiantes.CommandType = CommandType.StoredProcedure

            Dim adaptador As New SqlDataAdapter(pa_listadoEstudiantes)
            Dim dataset As New DataSet

            adaptador.Fill(dataset, "Estudiantes")
            conexion.Close()

            Return dataset
        End Function

        Public Function insertarEstudiantes(ByVal apellido As String, _
                                            ByVal nombre As String, _
                                            ByVal genero As Char, _
                                            ByVal fechaNac As Date) As String

            Dim resultado As String = ""


            Dim conexion As New SqlConnection(cadena)

            Dim conn As New SqlConnection(cadena)

            conn.Open()

            Dim comando As New SqlCommand("pa_insertarEstudiantes", conn)
            comando.CommandType = CommandType.StoredProcedure

            Dim pApellidos As New SqlParameter("@apellidos", apellido)
            pApellidos.SqlDbType = SqlDbType.VarChar
            pApellidos.Size = 30
            comando.Parameters.Add(pApellidos)

            Dim pNombres As New SqlParameter("@nombres", nombre)
            pNombres.SqlDbType = SqlDbType.VarChar
            pNombres.Size = 30
            comando.Parameters.Add(pNombres)

            Dim pGenero As New SqlParameter("@genero", genero)
            pGenero.SqlDbType = SqlDbType.VarChar
            pGenero.Size = 1
            comando.Parameters.Add(pGenero)

            Dim pFechanac As New SqlParameter("@fechaNac", fechaNac)
            pFechanac.SqlDbType = SqlDbType.Date
            comando.Parameters.Add(pFechanac)

            Dim pmsg As New SqlParameter("@msg", "")
            pmsg.SqlDbType = SqlDbType.VarChar
            pmsg.Size = 100
            pmsg.Direction = ParameterDirection.Output
            comando.Parameters.Add(pmsg)

            Dim x As Integer = 0, mensaje As String = ""
            x = comando.ExecuteNonQuery() 'ejecutamos el comando
            mensaje = comando.Parameters("@msg").Value

            conn.Close()
            Return mensaje

        End Function

    End Class

End Namespace