Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Mvc
Imports DevExpress.Web.Mvc
Imports System.ComponentModel

Namespace Example.Controllers
	<HandleError> _
	Public Class HomeController
		Inherits Controller
		Public Function Index() As ActionResult
			ViewData("Message") = "Welcome to DevExpress Extensions for ASP.NET MVC!"

			Dim order As New MyModel() With {.Name = "Vest", .Meal = CommonMeals.Breakfast}

			Return View(order)
		End Function

		<HttpPost> _
		Public Function MakeOrder(<ModelBinder(GetType(MyEditorsBinder))> ByVal order As MyModel) As ActionResult
			ViewData("Message") = String.Format("Your order is ready, {0}: {1}.", order.Name, order.Meal)

			Return View("Index", order)
		End Function
	End Class
End Namespace
