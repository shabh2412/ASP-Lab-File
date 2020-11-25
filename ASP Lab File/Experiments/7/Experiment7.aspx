<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment7.aspx.cs" Inherits="ASP_Lab_File.Experiments._7.Experiment7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--
        Create a registration form using ASP.Net validates the form fields using validators. Example:- RequiredFieldValidator, RangeValidator, etc.
    -->
    <div class="mt-3">
        <h1 class="text-center mb-4">Experiment 7</h1>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="FNameLbl" runat="server" AssociatedControlID="FNameTxt" Text="First Name"></asp:Label>
                <asp:RequiredFieldValidator ID="NameReq" runat="server" ControlToValidate="FNameTxt" ErrorMessage="Cannot be blank!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="FNameTxt" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="LNameLbl" runat="server" AssociatedControlID="LNameTxt" Text="Last Name"></asp:Label>
                <asp:RequiredFieldValidator ID="LNameReqd" runat="server" ControlToValidate="LNameTxt" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="LNameTxt" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="EmailLbl" runat="server" AssociatedControlID="EmailTxt" Text="Email"></asp:Label>
                <asp:RequiredFieldValidator ID="EmailReqd" runat="server" ControlToValidate="EmailTxt" ErrorMessage="RequiredFieldValidator" ForeColor="#CC3300">Cannot be blank</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="EmailRegex" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Invalid Format Entered" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:TextBox ID="EmailTxt" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="PasswordLbl" runat="server" AssociatedControlID="PasswordTxt" Text="Password"></asp:Label>
                <asp:RequiredFieldValidator ID="PassReqd" runat="server" ControlToValidate="PasswordTxt" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:TextBox ID="PasswordTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <asp:Label ID="AgeLbl" runat="server" AssociatedControlID="AgeTxt" Text="Age"></asp:Label>
                <asp:RequiredFieldValidator ID="AgeReqd" runat="server" ControlToValidate="AgeTxt" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AgeTxt" ErrorMessage="Must be between 18 &amp; 35." ForeColor="#CC3300" MaximumValue="35" MinimumValue="18" SetFocusOnError="True"></asp:RangeValidator>
                <asp:TextBox ID="AgeTxt" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group col-md-6">
                <asp:Label ID="ContactLbl" runat="server" AssociatedControlID="ContactTxt" Text="Contact"></asp:Label>
                <asp:RequiredFieldValidator ID="ContactReqd" runat="server" ControlToValidate="ContactTxt" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="ContactRegex" runat="server" ControlToValidate="ContactTxt" ErrorMessage="Is of Invalid Format" ForeColor="#CC3300" ValidationExpression="^[+]91\d{10}$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="ContactTxt" TextMode="SingleLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-row mt-4 mb-4 text-center">
            <div class="col">
                <asp:Button ID="BtnSubmit" CssClass="btn btn-primary" runat="server" Text="Sign In" />
            </div>
        </div>
    </div>
</asp:Content>
