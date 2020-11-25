<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experiment6.aspx.cs" Inherits="ASP_Lab_File.Experiments._6.Experiment6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <h1 class="display-5 text-center m-5">Calorie Burn Calculator - Clone</h1>
        <p>Find out how many calories you burn doing different activities. The calculator uses the type of physical activity and your basal metabolic rate to calculate calories burned, so gives a personalised result. Knowing roughly how many calories you expend doing different activities can help you with weight loss or maintenance.</p>
        <div id="myForm" runat="server" class="mt-5">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Gender: </label>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="genderInputMale" CssClass="form-check-input" runat="server" GroupName="genderInput" />
                    <label class="form-check-label" for="genderInputMale">Male</label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="genderInputFemale" CssClass="form-check-input" runat="server" GroupName="genderInput" />
                    <label class="form-check-label" for="genderInputFemale">Female</label>
                </div>
            </div>
            <div class="form-group row">
                <label for="heightInput" class="col-sm-2 col-form-label">Height (in cm): </label>
                <div class="col-sm-10">
                    <asp:TextBox ID="heightInput" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="weightInput" class="col-sm-2 col-form-label">Weight (in kg): </label>
                <div class="col-sm-10">
                    <asp:TextBox ID="weightInput" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="ageInput" class="col-sm-2 col-form-label">Age (years): </label>
                <div class="col-sm-10">
                    <asp:TextBox ID="ageInput" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="activityInput" class="col-sm-2 col-form-label">Activity: </label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="activityInput" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label for="lenInput" class="col-sm-2 col-form-label">Length of Activity (in min): </label>
                <div class="col-sm-10">
                    <asp:TextBox ID="lenInput" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                </div>
            </div>
            <asp:Button ID="calculateCaloriesBurned" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Calculate" OnClick="calculateCaloriesBurned_Click"></asp:Button>
        </div>

        <div class="container my-4">
            <asp:Label ID="errorLabel" CssClass="p-3 bg-danger text-white rounded" runat="server" Text=""></asp:Label>
        </div>

        <div class="container my-5 border border-success rounded">
            <h3>Result</h3>
            <br />
            <p><strong>Activity:</strong>
                <asp:Label ID="activityLabel" runat="server"></asp:Label></p>
            <p><strong>Activity Time:</strong>
                <asp:Label ID="lenLabel" runat="server" Text="0"></asp:Label>min</p>
            <p class="p-3 bg-success text-white rounded"><strong>Energy Burned:</strong>
                <asp:Label ID="kcalLabel" runat="server" Text="0"></asp:Label>kcal /
                <asp:Label ID="kjLabel" runat="server" Text="0"></asp:Label>kJ</p>
            <p class="p-3 bg-success text-white rounded"><strong>Energy Burned Per Hour:</strong>
                <asp:Label ID="kcalLabelHour" runat="server" Text="0"></asp:Label>kcal /
                <asp:Label ID="kjLabelHour" runat="server" Text="0"></asp:Label>kJ</p>
        </div>
    </div>
</asp:Content>
