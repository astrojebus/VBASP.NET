Imports System.Configuration

Imports System.Web.Configuration
Partial Class Encriptar


    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim config As Configuration = WebConfigurationManager.OpenWebConfiguration("~")

        Dim section As Configuration = config.Sections("connectionStrings")

        section.Sections.i)

    End Sub
End Class
