<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment17.aspx.cs" Inherits="ASP_Lab_File.Experiments._17.Experiment17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" CssClass="my-4 table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" ShowFooter="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton CssClass="btn btn-link" ID="lbInsert" OnClick="lbInsert_Click" ValidationGroup="INSERT" runat="server">Insert</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RollNumber" SortExpression="RollNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("RollNumber") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditRoll" ControlToValidate="TextBox1" Text="*" ForeColor="Red" runat="server" ErrorMessage="Roll Number cannot be blank!"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("RollNumber") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox CssClass="form-control" ID="TxtRoll" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertRoll" ControlToValidate="TxtRoll" ValidationGroup="INSERT" ForeColor="Red" runat="server" Text="*" ErrorMessage="Roll Number cannot be blank!"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditName" ControlToValidate="TextBox2" ForeColor="Red" runat="server" Text="*" ErrorMessage="Name cannot be blank!"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox CssClass="form-control" ID="TxtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertName" ControlToValidate="TxtName" ForeColor="Red" runat="server" Text="*" ErrorMessage="Name cannot be blank!"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                <EditItemTemplate>
                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvEditGender" CssClass="form-control" ControlToValidate="DropDownList1" ForeColor="Red" runat="server" Text="*" InitialValue="Select Gender" ErrorMessage="Gender is required"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>

                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertGender" ControlToValidate="ddlGender" ForeColor="Red" runat="server" Text="*" ErrorMessage="Gender is required"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact" SortExpression="Contact">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditContact" ControlToValidate="TextBox4" ForeColor="Red" runat="server" Text="*" ErrorMessage="Contact cannot be blank!"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="TxtContact" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvInsertContact" ControlToValidate="TxtContact" ValidationGroup="INSERT" CssClass="form-control" ForeColor="Red" runat="server" Text="*" ErrorMessage="Contact cannot be blank!"></asp:RequiredFieldValidator>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="INSERT" ForeColor="Red" runat="server" />
    <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Student] ([RollNumber], [Name], [Gender], [Contact]) VALUES (@RollNumber, @Name, @Gender, @Contact)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [RollNumber] = @RollNumber, [Name] = @Name, [Gender] = @Gender, [Contact] = @Contact WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RollNumber" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RollNumber" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
