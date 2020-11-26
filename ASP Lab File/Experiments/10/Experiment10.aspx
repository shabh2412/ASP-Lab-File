<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment10.aspx.cs" Inherits="ASP_Lab_File.Experiments._10.Experiment10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-5">
        <div class="form-group">
            <asp:Label ID="nameLbl" runat="server" Text="Name" AssociatedControlID="NameTxt"></asp:Label>
            <asp:RequiredFieldValidator ControlToValidate="NameTxt" ID="NameReqd" runat="server" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            <asp:TextBox ID="NameTxt" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="passwordLbl" runat="server" Text="Password"></asp:Label>
            <asp:RequiredFieldValidator ControlToValidate="PasswordTxt" ID="PasswordReqd" runat="server" ErrorMessage="Cannot be blank" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            <asp:TextBox ID="PasswordTxt" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="BtnSubmit" CssClass="btn btn-block btn-primary text-white" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        </div>
    </div>
</asp:Content>
