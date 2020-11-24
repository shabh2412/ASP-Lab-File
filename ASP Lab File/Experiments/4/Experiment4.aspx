<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment4.aspx.cs" Inherits="ASP_Lab_File.Experiments._4.Experiment4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--
        Create an application that allows the user to enter a number in the textbox. Check whether the number in the message is palindrome or not in the label control when the user clicks on the button
        -->
    <div class="p-3 m-2 container-fluid">
        <h1 class="display-3 text-center">Palindrome Checker Program in ASP.NET</h1>
    </div>
    <div class="form-group bg-secondary p-5 text-light rounded-lg">
        <label class="h4 mb-4" for="inputNumber">Enter Number to check for palindrome.</label>
        <div class="row">
            <asp:TextBox ID="inputNumber" TextMode="Number" Style="letter-spacing: 2px;"
                class="form-control border-primary font-weight-bold p-4" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit"
                CssClass="btn btn-primary mx-auto px-5 my-3 shadow p-3 mb-5 rounded"
                runat="server"
                Text="Check" OnClick="btnSubmit_Click" />
        </div>
        <small runat="server" id="outPut" class="form-text h4 text-center">Your output will appear here</small>
    </div>
</asp:Content>
