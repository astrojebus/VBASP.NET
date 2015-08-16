Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Namespace Usuarios

    Public Class CUsuarios

        Dim cad As String = "server= PCF74\SQL2012; database=septimo; uid=jbusla; pwd=jdbl1991"
        'Dim cad As String = "server= PCF74\SQL2012; database=ventas; uid=jbusla; pwd=jdbl1991"

        Public Function guardar(ByVal login As String, _
                                    ByVal clave As String, _
                                    ByVal apellidos As String, _
                                    ByVal nombres As String) As String
            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prUsuarios_A", conn)
            comando.CommandType = CommandType.StoredProcedure
            Dim aux As String = Academico.CEncriptar.fnEncriptarSHA1(clave)

            Dim pLogin As New SqlParameter("@login", login)
            pLogin.SqlDbType = SqlDbType.VarChar
            pLogin.Size = 5
            comando.Parameters.Add(pLogin)

            Dim pClave As New SqlParameter("@clave", aux)
            pClave.SqlDbType = SqlDbType.VarChar
            pClave.Size = 80
            comando.Parameters.Add(pClave)

            Dim pApellidos As New SqlParameter("@apellidos", apellidos)
            pApellidos.SqlDbType = SqlDbType.VarChar
            pApellidos.Size = 30
            comando.Parameters.Add(pApellidos)

            Dim pNombres As New SqlParameter("@nombres", nombres)
            pNombres.SqlDbType = SqlDbType.VarChar
            pNombres.Size = 30
            comando.Parameters.Add(pNombres)


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



        Public Function valida(ByVal login As String, _
                                    ByVal clave As String) As String
            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prUsurios_valida", conn)
            comando.CommandType = CommandType.StoredProcedure
            Dim aux As String = Academico.CEncriptar.fnEncriptarSHA1(clave)

            Dim pLogin As New SqlParameter("@login", login)
            pLogin.SqlDbType = SqlDbType.VarChar
            pLogin.Size = 5
            comando.Parameters.Add(pLogin)

            Dim pClave As New SqlParameter("@clave", aux)
            pClave.SqlDbType = SqlDbType.VarChar
            pClave.Size = 80
            comando.Parameters.Add(pClave)

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