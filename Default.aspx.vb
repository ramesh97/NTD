Imports PhysicianTableAdapters
Imports System.Web.Security
Imports System.Security.Principal
Imports System.Web.SessionState

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim ObjUsers As New UsersTableAdapter
    Dim ObjPhysicians As New PhysiciansTableAdapter
    Dim UserRole

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        UserRole = ""

        If ChkPhysician.Checked Then
            If ObjPhysicians.CheckUser(TxtLoginID.Text, TxtPwd.Text) > 0 Then
                UserRole = "Physician"
            End If
        Else
            UserRole = ObjUsers.GetRoleByUserName(TxtLoginID.Text, TxtPwd.Text)
        End If

        If UserRole <> "" Then
            'Session("FacilityName") = DdlFacilityName.SelectedItem.Text
            'Session("FacilityValue") = DdlFacilityName.SelectedItem.Value
            Session("UserName") = TxtLoginID.Text
            FormsAuthentication.Initialize()
            FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "sha1")
            Dim ticket As New FormsAuthenticationTicket(1, TxtLoginID.Text, DateTime.Now, DateTime.Now.AddMinutes(30), True, UserRole, FormsAuthentication.FormsCookiePath)
            Dim hash As String = FormsAuthentication.Encrypt(ticket)
            Dim cookie As New HttpCookie(FormsAuthentication.FormsCookieName, hash)
            Response.Cookies.Add(cookie)

            Select Case UserRole
                Case "user"
                    Response.Redirect("user/EnquiryForm.aspx")
                Case "SuperUser"
                    Response.Redirect("SuperUser/default.aspx")
                Case "FacilityAdmin"
                    Response.Redirect("FacilityAdmin/default.aspx")
                Case "Physician"
                    Response.Redirect("Physician/ReportByEnquiryForm.aspx")
            End Select
        Else
            LblMsg.Text = "Invalid User ID / Password, Please Try Again !!"
        End If

    End Sub

    

    
End Class