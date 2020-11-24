<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment3.aspx.cs" Inherits="ASP_Lab_File.Experiments._2.Experiment3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row col-max">

        <div runat="server" class="col-max" style="margin-top: 20px;">
            <div class="form-group">
                <asp:Label ID="nameLbl" runat="server" Text="Name" AssociatedControlID="NameTxt"></asp:Label>
                <asp:TextBox ID="NameTxt" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="msgLbl" runat="server" Text="Message" AssociatedControlID="MsgTxt"></asp:Label>
                <asp:TextBox ID="MsgTxt" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="SubmitBtn" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
        </div>
        <div class="col-max mx-auto" runat="server" style="margin-top: 20px;">
            <div class="form-group">
                <asp:Label ID="OutputLbl" runat="server" Text="" Font-Italic="False" Font-Bold="False" Font-Underline="False"></asp:Label>
            </div>
            <div class="form-group form-check">
                <div class="row">
                </div>
                <div class="row">
                </div>
                <div class="row">
                </div>
            </div>
            <div class="m-3 p-2">
                <div class="form-check form-check-inline">
                    <asp:CheckBox CssClass="px-1 form-check-input" ID="BoldChk" runat="server" />
                    <asp:Label ID="boldLbl" CssClass="form-check-label" runat="server" Text="Bold" AssociatedControlID="BoldChk"></asp:Label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:CheckBox CssClass="px-1 form-check-input" ID="UnderlineChk" runat="server" />
                    <asp:Label ID="underlineLbl" CssClass="form-check-label" runat="server" Text="Underline" AssociatedControlID="UnderlineChk"></asp:Label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:CheckBox CssClass="px-1 form-check-input" ID="ItalicChk" runat="server" />
                    <asp:Label ID="italicLbl" CssClass="form-check-label" runat="server" Text="Italic" AssociatedControlID="ItalicChk"></asp:Label>
                </div>
            </div>
            <div class="m-3 p-2">
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="Red" CssClass="form-check-input" runat="server" GroupName="Color" />
                    <asp:Label ID="redLbl" runat="server" AssociatedControlID="Red" CssClass="form-check-label" Text="Red"></asp:Label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="Blue" CssClass="form-check-input" runat="server" GroupName="Color" />
                    <asp:Label ID="blueLbl" runat="server" AssociatedControlID="Blue" CssClass="form-check-label" Text="Blue"></asp:Label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="Black" CssClass="form-check-input" runat="server" GroupName="Color" />
                    <asp:Label ID="blackLbl" runat="server" AssociatedControlID="Black" CssClass="form-check-label" Text="Black"></asp:Label>
                </div>
            </div>
            <asp:Button ID="ApplyChanges" CssClass="btn btn-success" runat="server" Text="Apply Changes" OnClick="ApplyChanges_Click" />
            <asp:Button ID="ClearTxtBtn" CssClass="btn btn-warning" runat="server" Text="Clear Text" OnClick="ClearTxtBtn_Click" />
        </div>

    </div>
</asp:Content>
