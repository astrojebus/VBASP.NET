Imports System.Data.SqlClient

Namespace Septimo
    Public Class Notas

        'Dim cadena As String = "Data Source=TRANSPORTE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;User ID=sa;Password=1234"
        'Dim cadena As String = "Data Source=GANCOCE-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        Dim cadena As String = "Data Source=USER-PC\SQLEXPRESS;Initial Catalog=NUEVASTECS;Integrated Security=True"
        'Dim cadena As String = "Data Source=PCD55\SQLEXPRESS;Initial Catalog = NUEVASTECS; Integrated Security=True; User ID=sa; Password=Computadora2014"


        Public Function listadoNotas() As DataSet

            Dim conexion As New SqlConnection(cadena)

            conexion.Open()
            Dim pa_listadoNotas As New SqlCommand("pa_listadoNotas", conexion)

            pa_listadoNotas.CommandType = CommandType.StoredProcedure

            Dim adaptador As New SqlDataAdapter(pa_listadoNotas)
            Dim dataset As New DataSet

            adaptador.Fill(dataset, "Notas")
            conexion.Close()

            Return dataset
        End Function


    End Class
End Namespace
