<!-- default file list -->
*Files to look at*:

* [HomeController.cs](./CS/Controllers/HomeController.cs) (VB: [HomeController.vb](./VB/Controllers/HomeController.vb))
* [Global.asax](./CS/Global.asax) (VB: [Global.asax](./VB/Global.asax))
* [Global.asax.cs](./CS/Global.asax.cs) (VB: [Global.asax.vb](./VB/Global.asax.vb))
* [MyBinder.cs](./CS/Models/MyBinder.cs) (VB: [MyBinder.vb](./VB/Models/MyBinder.vb))
* [MyModel.cs](./CS/Models/MyModel.cs) (VB: [MyModel.vb](./VB/Models/MyModel.vb))
* [Index.aspx](./CS/Views/Home/Index.aspx) (VB: [Index.aspx](./VB/Views/Home/Index.aspx))
* [Error.aspx](./CS/Views/Shared/Error.aspx) (VB: [Error.aspx](./VB/Views/Shared/Error.aspx))
<!-- default file list end -->
# How to bind RadioButtonList to an enumerable property of Model


<p>The example demonstrates how to bind the RadioButtonList extension to an enumerable property of Model using custom model binder inherited from the <strong>DevExpressEditorsBinder</strong> class.</p>


<h3>Description</h3>

<p>Due to the <a data-ticket="S36682">Improve DevExpressEditorsBinder to allow editing enumerable properties </a> feature implementation, it is now possible to use different types of the Model properties (such as Guid, Enum or even custom objects, allowing the CustomType &lt;--&gt; String conversion). The next version of the example does not use the MyEditorsBinder class as shown in this project.<br /> It is recommended to upgrade the DevExpress components to use this feature.</p>

<br/>


