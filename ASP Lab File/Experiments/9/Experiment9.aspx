<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment9.aspx.cs" Inherits="ASP_Lab_File.Experiments._9.Experiment9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center mt-3">Student Information Form</h1>
    <hr />
    <div class="mt-3 mx-5 px-5 mb-5" runat="server" id="signUpForm">
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="nameLabel" runat="server" Text="Name" AssociatedControlID="nameTxt"></asp:Label>
                <asp:TextBox ID="nameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="Cannot be empty." ForeColor="#CC3300" ControlToValidate="nameTxt"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="collegeTxtLabel" runat="server" Text="College Name" AssociatedControlID="collegeTxt"></asp:Label>
                <asp:TextBox ID="collegeTxt" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="collegeValidator" runat="server" ErrorMessage="Cannot be empty." ForeColor="#CC3300" ControlToValidate="collegeTxt"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="courseLabel" runat="server" Text="Course" AssociatedControlID="courseTxt"></asp:Label>
                <asp:TextBox ID="courseTxt" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="courseValidator" runat="server" ErrorMessage="Cannot be empty" ForeColor="#CC3300" ControlToValidate="courseTxt"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="semesterLabel" runat="server" Text="Semester" AssociatedControlID="semesterTxt"></asp:Label>
                <asp:TextBox ID="semesterTxt" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="semesterValidator" runat="server" ErrorMessage="Cannot be empty." ForeColor="#CC3300" ControlToValidate="semesterTxt"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="favSubLabel" runat="server" Text="Favourite Subject" AssociatedControlID="favSubTxt"></asp:Label>
                <asp:TextBox ID="favSubTxt" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="favSubValidator" runat="server" ErrorMessage="Cannot be empty." ForeColor="#CC3300" ControlToValidate="favSubTxt"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group col-md-6">
                <asp:Label ID="consent" runat="server" Text="By submitting this form, you agree to our Terms & Conditions." AssociatedControlID="favSubTxt"></asp:Label>
                <asp:Button ID="SavePreferences" CssClass="form-control btn btn-primary btn-block" runat="server" Text="Save Data" OnClick="SavePreferences_Click" />
            </div>
        </div>
    </div>
</asp:Content>
