# How to bind RadioButtonList to an enumerable property of Model


<p>The example demonstrates how to bind the RadioButtonList extension to an enumerable property of Model using custom model binder inherited from the <strong>DevExpressEditorsBinder</strong> class.</p>


<h3>Description</h3>

<p>Due to the <a data-ticket="S36682">Improve DevExpressEditorsBinder to allow editing enumerable properties </a> feature implementation, it is now possible to use different types of the Model properties (such as Guid, Enum or even custom objects, allowing the CustomType &lt;--&gt; String conversion). The next version of the example does not use the MyEditorsBinder class as shown in this project.<br /> It is recommended to upgrade the DevExpress components to use this feature.</p>

<br/>


