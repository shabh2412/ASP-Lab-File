<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSavedPreferences.aspx.cs" Inherits="ASP_Lab_File.Experiments._9.UserSavedPreferences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center mt-3">Student Information Page</h1>
    <hr />
    <div class="mt-3 mx-5 px-5 mb-5" runat="server" id="signUpForm">
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="nameLabel" runat="server" Text="Name" AssociatedControlID="nameTxt"></asp:Label>
                <asp:TextBox ID="nameTxt" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="collegeTxtLabel" runat="server" Text="College Name" AssociatedControlID="collegeTxt"></asp:Label>
                <asp:TextBox ID="collegeTxt" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="courseLabel" runat="server" Text="Course" AssociatedControlID="courseTxt"></asp:Label>
                <asp:TextBox ID="courseTxt" CssClass="form-control" runat="server" TextMode="SingleLine" Enabled="False"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="semesterLabel" runat="server" Text="Semester" AssociatedControlID="semesterTxt"></asp:Label>
                <asp:TextBox ID="semesterTxt" CssClass="form-control" runat="server" TextMode="SingleLine" Enabled="False"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="favSubLabel" runat="server" Text="Favourite Subject" AssociatedControlID="favSubTxt"></asp:Label>
                <asp:TextBox ID="favSubTxt" CssClass="form-control" runat="server" TextMode="SingleLine" Enabled="False"></asp:TextBox>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="consent" runat="server" Text="You can delete your data." AssociatedControlID="favSubTxt"></asp:Label>
                <asp:Button ID="SavePreferences" CssClass="form-control btn btn-danger btn-block" runat="server" Text="Delete Data" OnClick="SavePreferences_Click" />
            </div>
        </div>
    </div>

</asp:Content>
