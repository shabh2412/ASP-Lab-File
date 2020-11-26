<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoggedInPage.aspx.cs" Inherits="ASP_Lab_File.Experiments._10.LoggedInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 runat="server" id="LoginStatus" class="display-5 mt-3 mb-3"></h1>
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:Label ID="NameLabel" runat="server" Text=""></asp:Label>

    </div>
    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <asp:Label ID="PasswordLabel" runat="server" Text=""></asp:Label>
</asp:Content>
