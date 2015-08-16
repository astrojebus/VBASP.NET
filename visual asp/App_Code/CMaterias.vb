Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Namespace Septimo

    Public Class CMaterias
        Private cad As String = "server= PCF74\SQL2012; database=septimo; uid=jbusla; pwd=jdbl1991"
        Public Function listadoMaterias() As DataSet

            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prMaterias_A2", conn)
            comando.CommandType = CommandType.StoredProcedure
            'crear un adaptador
            Dim ad As New SqlDataAdapter(comando)
            Dim ds As New DataSet
            ad.Fill(ds, "Materias")

            conn.Close()
            Return ds
        End Function

        Public Function guardar(ByVal codigo As String, ByVal materia As String, ByVal creditos As String, ByVal carrera As String, ByVal laboratorio As Boolean, ByVal activa As Boolean, ByVal fechaCreacion As Date) As String
            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prMaterias_A2", conn)
            comando.CommandType = CommandType.StoredProcedure

            'agrego aprametros
            Dim pCodigo As New SqlParameter("@codigo", codigo)
            pCodigo.SqlDbType = SqlDbType.VarChar
            pCodigo.Size = 8
            comando.Parameters.Add(pCodigo)

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

            Dim pfechaCreacion As New SqlParameter("@fechaCreacion", fechaCreacion)
            pfechaCreacion.SqlDbType = SqlDbType.Date
            comando.Parameters.Add(pfechaCreacion)

            Dim pmsg As New SqlParameter("@msg", "")
            pmsg.SqlDbType = SqlDbType.VarChar
            pmsg.Size = 100
            pmsg.Direction = ParameterDirection.Output 'parametro de salida
            comando.Parameters.Add(pmsg)

            Dim x As Integer = 0, mensaje As String = ""
            x = comando.ExecuteNonQuery() 'ejecutamos el comando
            mensaje = comando.Parameters("@msg").Value 'recuperamos el parametro

            conn.Close()
            Return mensaje
        End Function


    End Class
End Namespace