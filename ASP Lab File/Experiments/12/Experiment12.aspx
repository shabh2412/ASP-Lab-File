<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" Trace="true" AutoEventWireup="true" CodeBehind="Experiment12.aspx.cs" Inherits="ASP_Lab_File.Experiments._12.Experiment12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--
        Demonstrating Tracing and Error Handling
        -->
    <h1 class="text-center">Demonstrating Tracing and Error Handling
    </h1>
    <hr />
    <div class="form-group p-3">
        <p class="text-center font-weight-bold">To See Custom Error Handling, enter any gibberish link, and try to access it.</p>
        <asp:Label ID="Label1" CssClass="p-2" runat="server" Text="Click the button to perform 0/0 operation..."></asp:Label>
        <asp:Button CssClass="form-control btn btn-primary btn-block m-2 p-2" ID="ZeroByZero" runat="server" Text="0/0" OnClick="ZeroByZero_Click" />
        <asp:Label ID="Lbl" runat="server" Text="Output: "></asp:Label>
        <asp:Label ID="Output" runat="server" Text=""></asp:Label>
    </div>
    
    <hr />
    <h2 class="text-center">Below, you will find the result of page tracing</h2>
</asp:Content>
