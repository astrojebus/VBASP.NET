Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient
Namespace Septimo
    Public Class CEstudiantes
        Private cad As String = "server= PCF74\SQL2012; database=septimo; uid=jbusla; pwd=jdbl1991"
        Public Function listadoEstudiantes() As DataSet

            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prEstudiantes_listado", conn)
            comando.CommandType = CommandType.StoredProcedure
            'crear un adaptador
            Dim ad As New SqlDataAdapter(comando)
            Dim ds As New DataSet
            ad.Fill(ds, "Estudiantes")

            conn.Close()
            Return ds
        End Function

        Public Function guardar(ByVal matricula As String, ByVal apellidos As String, ByVal nombres As String, ByVal genero As String, ByVal fechaNac As Date) As String
            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prEstudiantes_A2", conn)
            comando.CommandType = CommandType.StoredProcedure

            'agrego aprametros
            Dim pMatricula As New SqlParameter("@matricula", matricula)
            pMatricula.SqlDbType = SqlDbType.VarChar
            pMatricula.Size = 5
            comando.Parameters.Add(pMatricula)

            Dim pApellidos As New SqlParameter("@apellidos", apellidos)
            pApellidos.SqlDbType = SqlDbType.VarChar
            pApellidos.Size = 30
            comando.Parameters.Add(pApellidos)


            Dim pNombres As New SqlParameter("@nombres", nombres)
            pNombres.SqlDbType = SqlDbType.VarChar
            pNombres.Size = 30
            comando.Parameters.Add(pNombres)

            Dim pgenero As New SqlParameter("@genero", genero)
            pgenero.SqlDbType = SqlDbType.VarChar
            pgenero.Size = 1
            comando.Parameters.Add(pgenero)

            Dim pfechaNac As New SqlParameter("@fechaNac", fechaNac)
            pfechaNac.SqlDbType = SqlDbType.Date
            comando.Parameters.Add(pfechaNac)

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