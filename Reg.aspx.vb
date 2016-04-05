Imports System.Data.SqlClient
Partial Class Reg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("data source=localhost;initial catalog=pis;user id=sa;password=sa")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If IsDate(TextBox5.Text) Then
            'If DateDiff(DateInterval.Year, CDate(TextBox5.Text), Date.Today) >= 18 Then
            Dim nsno As Integer
            Try
                con.Open()
                nsno = 1000
                Dim cmd1 As New SqlCommand("select max(cid) from CustomerRegn", con)
                Dim dr As SqlDataReader = cmd1.ExecuteReader(Data.CommandBehavior.SingleRow)

                Try
                    If dr.Read() Then
                        nsno = dr.GetValue(0) + 1
                    Else
                        nsno = 1000
                    End If
                    dr.Close()
                Catch ex As Exception
                    nsno = 1000
                    'Label5.Text = ex.Message
                    dr.Close()
                End Try

                Dim cmd2 As New SqlCommand("insert into customerregn values(" & nsno & ",'" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "')", con)
                cmd2.ExecuteNonQuery()

                Label5.Text = "Customer Registered Successfully with ID Click to<a href='index2.aspx'> Login</a> " & nsno
            Catch ex As Exception
                Label5.Text = "Customer already exists! ."
            End Try
            con.Close()
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox5.Text = ""

            'Else
            ' Label5.Text = "You should be 18 years to register."
            'End If
        Else
            Label5.Text = "Registration Date Required. Please Reload !!!!"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack() Then
            TextBox5.Text = Date.Today.ToShortDateString()
        End If
    End Sub
End Class
