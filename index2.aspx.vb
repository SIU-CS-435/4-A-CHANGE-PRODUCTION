Imports System.Data.OleDb
Partial Class index2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim tuid, tpwd As String

        tuid = TextBox1.Text
        tpwd = TextBox2.Text
        'Dim con As New OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=e:\projweb\projdb.mdb")
        Dim con As New OleDbConnection("provider=sqloledb;data source=localhost;initial catalog=pis;user id=sa;password=database")
        Try
            con.Open()
            If (RadioButton1.Checked = True) Then

                Dim cmd As New OleDbCommand("select * from users where uid='" & tuid & "' and pwd='" & tpwd & "'", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader(Data.CommandBehavior.SingleRow)
                If dr.Read() Then
                    Session.Add("lid", TextBox1.Text)
                    Response.Redirect("aindex.htm")
                Else
                    Label3.Text = "Intruder! Login Denied."
                End If
            End If
            If (RadioButton2.Checked = True) Then

                Dim cmd As New OleDbCommand("select * from customerregn where cid=" & tuid & " and pwd='" & tpwd & "'", con)
                Dim dr As OleDbDataReader = cmd.ExecuteReader(Data.CommandBehavior.SingleRow)
                If dr.Read() Then
                    Session.Add("lid", TextBox1.Text)
                    Response.Redirect("cindex.htm")
                Else
                    Label3.Text = "Intruder! Login Denied."
                End If
            End If
        Catch ex As Exception
            Label3.Text = ex.Message
        End Try

        con.Close()
    End Sub
End Class
