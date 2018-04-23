<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <%: ViewData["Message"] %></h2>
    <% Html.BeginForm("MakeOrder", "Home"); %>
    <div style="background-color: #ddddff; border: 1px solid black; width: 200px; padding: 4px;">
        <strong>Name: </strong>
        <%
            Html.DevExpress().TextBox(settings => {
                settings.Name = "Name";
                settings.Width = Unit.Percentage(100);
            })
       .Bind(Model.Name)
       .Render(); 
        %>
        <br />
        <strong>Meal: </strong>
        <%
            Html.DevExpress().RadioButtonList(settings => {
                settings.Name = "Meal";
                settings.Properties.ValueType = typeof(CommonMeals);
                settings.Properties.Items.Add("Breakfast - morning", CommonMeals.Breakfast);
                settings.Properties.Items.Add("Lunch - 11 am and 2 pm", CommonMeals.Lunch);
                settings.Properties.Items.Add("Dinner - evening", CommonMeals.Dinner);
                settings.Properties.Items.Add("Supper - late :(", CommonMeals.Supper);
                settings.Width = Unit.Percentage(100);
            })
           .Bind(Model.Meal)
           .Render();
        %>
        <br />
        <%
            Html.DevExpress().Button(settings => {
                settings.Name = "btn";
                settings.Text = "Submit";
                settings.UseSubmitBehavior = true;
            })
       .Render();
        %>
    </div>
    <% Html.EndForm(); %>
</asp:Content>
