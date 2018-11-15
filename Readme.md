<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE: Disable cell text wrapping during column resizing operations


<p>When end-users resize columns, cell text can become word-wrapped if a column becomes too narrow to fit cell values. You can avoid this by placing cell text into the <div> tag and disable this tag's word-wrapping. You can easily implement this using the <strong>DataItem</strong> template.<br /><br /></p>
<p><strong>This example is obsolete.</strong><br />For now, set the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebAppearanceStyleBase_Wraptopic">GridViewColumn.CellStyle.Wrap</a> property to "DefaultBoolean.False" to disable the cell wrapping. </p>

<br/>


