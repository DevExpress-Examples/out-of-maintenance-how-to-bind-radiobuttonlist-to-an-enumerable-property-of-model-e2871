<%@ Page Language="vb" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MyModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
<%
		  :
%>
		  </h2>
<%
		  ViewData("Message") Html.BeginForm("MakeOrder", "Home")
%>
	<div style="background-color: #ddddff; border: 1px solid black; width: 200px; padding: 4px;">
		<strong>Name: </strong>
		<%
			Html.DevExpress().TextBox(Function(settings) AnonymousMethod1(settings)).Bind(Model.Name).Render()
		%>
		<br />
		<strong>Meal: </strong>
		<%
			Html.DevExpress().RadioButtonList(Function(settings) AnonymousMethod2(settings)).Bind(Model.Meal).Render()
		%>
		<br />
		<%
			Html.DevExpress().Button(Function(settings) AnonymousMethod3(settings)).Render()
		%>
	</div>
<%
	   Html.EndForm()
%>
</asp:Content>


private bool AnonymousMethod1(object settings)
{
	settings.Name = "Name";
	settings.Width = Unit.Percentage(100);
	Return True;
}

private bool AnonymousMethod2(object settings)
{
	settings.Name = "Meal";
	settings.Properties.ValueType = typeof(CommonMeals);
	settings.Properties.Items.Add("Breakfast - morning", CommonMeals.Breakfast);
	settings.Properties.Items.Add("Lunch - 11 am and 2 pm", CommonMeals.Lunch);
	settings.Properties.Items.Add("Dinner - evening", CommonMeals.Dinner);
	settings.Properties.Items.Add("Supper - late :(", CommonMeals.Supper);
	settings.Width = Unit.Percentage(100);
	Return True;
}

private bool AnonymousMethod3(object settings)
{
	settings.Name = "btn";
	settings.Text = "Submit";
	settings.UseSubmitBehavior = True;
	Return True;
}