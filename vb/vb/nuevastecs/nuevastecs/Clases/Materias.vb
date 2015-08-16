Imports System.Data.SqlClient

Namespace Septimo
    Public Class Materias

        'Dim cadena As String = "Data Source=TRANSPORTE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;User ID=sa;Password=1234"
        'Dim cadena As String = "Data Source=GANCOCE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        Dim cadena As String = "Data Source=USER-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        'Dim cadena As String = "Data Source=PCD55\SQLEXPRESS;Initial Catalog = NUEVASTECS; Integrated Security=True; User ID=sa; Password=Computadora2014"

        Public Function listadoMaterias() As DataSet

            Dim conexion As New SqlConnection(cadena)

            conexion.Open()
            Dim pa_listadoMaterias As New SqlCommand("pa_listadoMaterias", conexion)

            pa_listadoMaterias.CommandType = CommandType.StoredProcedure

            Dim adaptador As New SqlDataAdapter(pa_listadoMaterias)
            Dim dataset As New DataSet

            adaptador.Fill(dataset, "Materias")
            conexion.Close()

            Return dataset
        End Function

        Public Function insertarMaterias(ByVal materia As String, _
                                            ByVal creditos As Integer, _
                                            ByVal carrera As String, _
                                            ByVal laboratorio As String, _
                                            ByVal activa As String, _
                                            ByVal fechaCreacion As Date) As String

            Dim resultado As String = ""


            Dim conexion As New SqlConnection(cadena)

            Dim conn As New SqlConnection(cadena)

            conn.Open()

            Dim comando As New SqlCommand("pa_insertarMaterias", conn)
            comando.CommandType = CommandType.StoredProcedure

            Dim pMateria As New SqlParameter("@materia", materia)
            pMateria.SqlDbType = SqlDbType.VarChar
            pMateria.Size = 50
            comando.Parameters.Add(pMateria)

            Dim pCreditos As New SqlParameter("@creditos", creditos)
            pCreditos.SqlDbType = SqlDbType.Int
            comando.Parameters.Add(pCreditos)

            Dim pCarrera As New SqlParameter("@carrera", carrera)
            pCarrera.SqlDbType = SqlDbType.VarChar
            pCarrera.Size = 50
            comando.Parameters.Add(pCarrera)

            Dim pLaboratorio As New SqlParameter("@laboratorio", laboratorio)
            pLaboratorio.SqlDbType = SqlDbType.Bit
            comando.Parameters.Add(pLaboratorio)

            Dim pActiva As New SqlParameter("@activa", activa)
            pActiva.SqlDbType = SqlDbType.Bit
            comando.Parameters.Add(pActiva)

            Dim pFechaCreacion As New SqlParameter("@fechaCreacion", fechaCreacion)
            pFechaCreacion.SqlDbType = SqlDbType.Date
            comando.Parameters.Add(pFechaCreacion)

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
