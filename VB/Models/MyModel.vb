Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.ComponentModel

Public Enum CommonMeals
	Breakfast
	Lunch
	Dinner
	Supper
End Enum

Public Class MyModel
	Private privateName As String
	Public Property Name() As String
		Get
			Return privateName
		End Get
		Set(ByVal value As String)
			privateName = value
		End Set
	End Property
	Private privateMeal As CommonMeals
	Public Property Meal() As CommonMeals
		Get
			Return privateMeal
		End Get
		Set(ByVal value As CommonMeals)
			privateMeal = value
		End Set
	End Property
End Class