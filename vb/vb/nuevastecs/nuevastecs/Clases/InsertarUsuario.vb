Imports System.Data.SqlClient
Imports System.Security.Cryptography

Namespace NuevasTECS

    Public Class InsertarUsuario

        'Dim cadena As String = "Data Source=PCD55\SQLEXPRESS;Initial Catalog = NUEVASTECS; Integrated Security=True; User ID=sa; Password=Computadora2014"
        Dim cadena As String = "Data Source=USER-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        'Dim cadena As String = "Data Source=TRANSPORTE-PC\SQLEXPRESS;Initial Catalog=PUCESE;User ID=sa;Password=1234"
        'Dim cadena As String = "Data Source=GANCOCE-PC\SQLEXPRESS;Initial Catalog=PUCESE;Integrated Security=True"

        Public Function registrarUsuario(nombreUsuario As String, clave As String, nombre As String, apellido As String) As String

            Dim resultado As String = ""
            Dim i As Integer = 0
            Dim conexion As New SqlConnection(cadena)

            Dim comando As New SqlCommand("pa_insertarUsuario", conexion)
            comando.CommandType = CommandType.StoredProcedure

            With comando.Parameters
                .Add("nombreUsuario", SqlDbType.VarChar, 50).Value = nombre
                .Add("clave", SqlDbType.VarChar, 150).Value = clave
                .Add("apellidos", SqlDbType.VarChar, 50).Value = apellido
                .Add("nombres", SqlDbType.VarChar, 30).Value = nombre
                .Add("msg", SqlDbType.VarChar, 100).Direction = ParameterDirection.Output
            End With

            Try
                conexion.Open()
                i = comando.ExecuteNonQuery
                resultado = comando.Parameters("msg").Value
            Catch ex As Exception
                MsgBox(ex.ToString)
            Finally
                conexion.Close()
            End Try

            Return resultado

        End Function

        Public Function GetSHA1HashData(data As String) As String
            'crea nueva instancia sha1
            Dim sha1 As SHA1 = sha1.Create()

            'convierte texto entrada a array de bits
            Dim hashData As Byte() = sha1.ComputeHash(Encoding.[Default].GetBytes(data))

            'crea nueva instancia StringBuilder para guardar el dato del hash
            Dim returnValue As New StringBuilder()

            'loop for each byte and add it to StringBuilder
            For i As Integer = 0 To hashData.Length - 1
                returnValue.Append(hashData(i).ToString())
            Next

            ' return cadena hexadecimal 
            Return returnValue.ToString()

        End Function

    End Class

End Namespace

