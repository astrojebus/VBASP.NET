Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Namespace Septimo
    Public Class CNotas
        Public Function listadoNotas() As DataSet
            Dim cad As String = ""
            cad = "server= PCF74\SQL2012; database=septimo; uid=jbusla; pwd=jdbl1991"
            Dim conn As New SqlConnection(cad)
            conn.Open()
            Dim comando As New SqlCommand("prNotas_listado", conn)
            comando.CommandType = CommandType.StoredProcedure
            'crear un adaptador
            Dim ad As New SqlDataAdapter(comando)
            Dim ds As New DataSet
            ad.Fill(ds, "Notas")

            conn.Close()
            Return ds
        End Function
    End Class
End Namespace
