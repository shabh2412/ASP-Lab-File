<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment5.aspx.cs" Inherits="ASP_Lab_File.Experiments._5.Experiment51" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="display-5 mt-3 text-center">Calories Calculator</h1>
    <div class="mt-5 mb-0 mx-auto">
        <div class="form-row mb-3">
            <div class="col"></div>
            <div class="col mr-4"></div>
            <div class="col ml-4 font-weight-bold">Current Calories in </div>
            <div class="col font-weight-bold">Total Calories in</div>
        </div>
        <div class="form-row">
            <div class="col">
                <asp:Label ID="FatLbl" runat="server" AssociatedControlID="FatTxt" Text="Fats (in g)"></asp:Label>
            </div>
            <div class="col mr-4">
                <asp:TextBox ID="FatTxt" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col ml-4">
                <asp:Label ID="CurrFat" runat="server" Text="Current Fat : Null"></asp:Label>
            </div>
            <div class="col">
                <asp:Label ID="TotalFat" runat="server" Text="Total Fat : Null"></asp:Label>
            </div>
        </div>
        <div class="form-row">
            <div class="col">
                <asp:Label ID="ProtLbl" runat="server" AssociatedControlID="ProtTxt" Text="Proteins (in g)"></asp:Label>
            </div>
            <div class="col mr-4">
                <asp:TextBox ID="ProtTxt" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col ml-4">
                <asp:Label ID="CurrProt" runat="server" Text="Current Proteins : Null"></asp:Label>
            </div>
            <div class="col">
                <asp:Label ID="TotalProt" runat="server" Text="Total Proteins : Null"></asp:Label>
            </div>
        </div>
        <div class="form-row mb-4">
            <div class="col">
                <asp:Label ID="CarbLbl" runat="server" AssociatedControlID="CarbTxt" Text="Carbohydrates (in g)"></asp:Label>
            </div>
            <div class="col mr-4">
                <asp:TextBox ID="CarbTxt" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <div class="col ml-4">
                <asp:Label ID="CurrCarb" runat="server" Text="Current Carbohydrates : Null"></asp:Label>
            </div>
            <div class="col">
                <asp:Label ID="TotalCarb" runat="server" Text="Total Carbohydrates : Null"></asp:Label>
            </div>
        </div>
        <div class="form-row mt-3 mb-4">
            <asp:Button ID="BtnSubmit" CssClass="btn btn-primary mx-auto" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        </div>
        <div class="form-row mt-3">
            <div class="col-4 text-center font-weight-bold">
                <asp:Label ID="CurrCals" runat="server" Text="Current Calories : Null"></asp:Label>
            </div>
            <div class="col-4 text-center font-weight-bold">
                <asp:Label ID="ItemCount" runat="server" Text="Item Count : 0"></asp:Label>
            </div>
            <div class="col-4 text-center font-weight-bold">
                <asp:Label ID="TotalCalories" runat="server" Text="TotalCalories : Null"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
