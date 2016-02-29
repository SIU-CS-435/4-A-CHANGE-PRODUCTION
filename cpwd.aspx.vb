Imports System.Data.OleDb
Partial Class cpwd
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim topwd, tnpwd, tcpwd As String
        Dim slid As String
        topwd = TextBox1.Text
        tnpwd = TextBox2.Text
        tcpwd = TextBox3.Text
        slid = Session.Item("lid")
        'Dim con As New OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=e:\projweb\projdb.mdb")
        Dim con As New OleDbConnection("provider=sqloledb;data source=localhost;initial catalog=pis;user id=sa;password=sa")
        Try
            con.Open()
            Response.Write(slid)
            If slid = "admin" Then
                Dim cmd As New OleDbCommand("select * from users where uid='Admin' and pwd='" & topwd & "'", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader(Data.CommandBehavior.SingleRow)
                If dr.Read() Then
                    dr.Close()
                    Dim cmd2 As New OleDbCommand("update users set pwd='" & tnpwd & "' where uid='admin'", con)
                    cmd2.ExecuteNonQuery()
                    Label4.Text = "Password Reset Successfully."
                Else
                    Label4.Text = "Intruder! Password Incorrect."
                End If
            Else
                'Response.Write("select * from customerregn where cid=" & slid & " and pwd='" & topwd & "'")
                Dim cmd As New OleDbCommand("select * from customerregn where cid=" & slid & " and pwd='" & topwd & "'", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader(Data.CommandBehavior.SingleRow)
                If dr.Read() Then
                    dr.Close()
                    Dim cmd2 As New OleDbCommand("update customerregn set pwd='" & tnpwd & "' where cid=" & slid, con)
                    cmd2.ExecuteNonQuery()
                    Label4.Text = "Customer Password Reset Successfully."
                Else
                    Label4.Text = "Customer is Intruder! Password Incorrect."
                End If
            End If
        Catch ex As Exception
            Label4.Text = ex.Message
        End Try

        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
