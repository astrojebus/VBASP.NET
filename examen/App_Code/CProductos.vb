Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient

Public Class CProductos
    Private cad As String = "server= PCF74\SQL2012; database=examenBustos; uid=sa; pwd=123"
    Public Function listadoProductos() As DataSet

        Dim conn As New SqlConnection(cad)
        conn.Open()
        Dim comando As New SqlCommand("prProductos_listado", conn)
        comando.CommandType = CommandType.StoredProcedure
        'crear un adaptador
        Dim ad As New SqlDataAdapter(comando)
        Dim ds As New DataSet
        ad.Fill(ds, "Productos")

        conn.Close()
        Return ds
    End Function

    Public Function guardar(ByVal producto As String, ByVal fecharegistro As Date, ByVal preciocompra As Double, ByVal precioventa As Double, ByVal existenciasminimas As Integer, ByVal existenciasmaximas As Integer, ByVal tieneiva As Boolean, ByVal tienedescuento As Boolean, ByVal estado As String) As String
        Dim conn As New SqlConnection(cad)
        conn.Open()
        Dim comando As New SqlCommand("prProductosIngreso", conn)
        comando.CommandType = CommandType.StoredProcedure

        'agrego aprametros
        Dim pproducto As New SqlParameter("@producto", producto)
        pproducto.SqlDbType = SqlDbType.VarChar
        pproducto.Size = 5
        comando.Parameters.Add(pproducto)

        Dim pfecharegistro As New SqlParameter("@fecharegistro", fecharegistro)
        pfecharegistro.SqlDbType = SqlDbType.Date
        comando.Parameters.Add(pfecharegistro)

        Dim ppreciocompra As New SqlParameter("@preciocompra", preciocompra)
        ppreciocompra.SqlDbType = SqlDbType.Money
        comando.Parameters.Add(ppreciocompra)

        Dim pprecioventa As New SqlParameter("@precioventa", precioventa)
        pprecioventa.SqlDbType = SqlDbType.Money
        comando.Parameters.Add(pprecioventa)

        Dim pexistenciasminimas As New SqlParameter("@existenciasminimas", existenciasminimas)
        pexistenciasminimas.SqlDbType = SqlDbType.Int
        comando.Parameters.Add(pexistenciasminimas)

        Dim pexistenciasmaximas As New SqlParameter("@existenciasmaximas", existenciasmaximas)
        pexistenciasmaximas.SqlDbType = SqlDbType.Int
        comando.Parameters.Add(pexistenciasmaximas)

        Dim ptieneiva As New SqlParameter("@tieneiva", tieneiva)
        ptieneiva.SqlDbType = SqlDbType.Bit
        comando.Parameters.Add(ptieneiva)

        Dim ptienedescuento As New SqlParameter("@tienedescuento", tienedescuento)
        ptienedescuento.SqlDbType = SqlDbType.Bit
        comando.Parameters.Add(ptienedescuento)


        Dim pestado As New SqlParameter("@estado", estado)
        pestado.SqlDbType = SqlDbType.VarChar
        pestado.Size = 20
        comando.Parameters.Add(pestado)

      

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
