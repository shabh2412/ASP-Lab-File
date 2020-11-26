<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment13.aspx.cs" Inherits="ASP_Lab_File.Experiments._13.Experiment13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mt-5">
        <div class="form-group">
            <asp:Label ID="usernameLbl" runat="server" AssociatedControlID="UsernameTxt" Text="Username"></asp:Label>
            <asp:TextBox ID="UsernameTxt" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="PasswordLbl" runat="server" AssociatedControlID="PasswordTxt" Text="Password"></asp:Label>
            <asp:TextBox ID="PasswordTxt" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="BtnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
        <br />
        <asp:GridView ID="GridView1" CssClass="my-5 mx-auto" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
</asp:Content>
