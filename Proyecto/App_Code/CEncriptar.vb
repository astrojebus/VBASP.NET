Imports Microsoft.VisualBasic
Namespace SEMINARIO
    Public Class CEncriptar

        Public Shared Function fnEncriptarSHA1(ByVal vsValue As String) As String
            Dim hashValue As System.Security.Cryptography.HashAlgorithm
            hashValue = New System.Security.Cryptography.SHA1CryptoServiceProvider

            Dim byteValue() As Byte
            byteValue = System.Text.Encoding.UTF8.GetBytes(vsValue)
            Dim byteHash() As Byte = hashValue.ComputeHash(byteValue)

            hashValue.Clear()

            '// Return a base 64 encoded string of the Hash value
            Return (Convert.ToBase64String(byteHash))
        End Function
    End Class

End Namespace
