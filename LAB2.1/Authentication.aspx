<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authentication.aspx.cs" Inherits="LAB2._1.Authentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <asp:Label Text="Login" runat="server" ></asp:Label><br />
          <asp:TextBox ID="Login" runat="server"></asp:TextBox>
          <br /><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The field should not be empty" ControlToValidate="Login"></asp:RequiredFieldValidator>
          <br /><br />
          <asp:Label Text="Password" runat="server" ></asp:Label><br />
          <asp:TextBox ID="Password" runat="server"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password" ErrorMessage="The password must contain at least 8 characters" ValidationExpression=".{8,}"></asp:RegularExpressionValidator> 
          <br /><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The field should not be empty" ControlToValidate="Password"></asp:RequiredFieldValidator>
          <br /><br />
          <asp:Label Text="Repeat Password" runat="server" ></asp:Label><br />
          <asp:TextBox ID="RepeatPassword" runat="server"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="RepeatPassword" ErrorMessage="Passwords don't match"></asp:CompareValidator>
          <br /><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="The field should not be empty" ControlToValidate="RepeatPassword"></asp:RequiredFieldValidator>
          <br /><br />
          <asp:Label Text="Email" runat="server" ></asp:Label><br />
          <asp:TextBox ID="Email" runat="server"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Enter the correct email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          <br /><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="The field should not be empty" ControlToValidate="Email"></asp:RequiredFieldValidator>
          <br /><br />
          <asp:Label Text="Age" runat="server" ></asp:Label><br />
          <asp:TextBox ID="Age" runat="server"></asp:TextBox>
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="The age must be between 18 and 65 years old" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
          <br /><br />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="The field should not be empty" ControlToValidate="Age"></asp:RequiredFieldValidator>
          <br /><br />
          <br />
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
          <br />
          <asp:Button ID="Submit" runat="server" Text="Войти" OnClick="Submit_Click" />
        </div>
    </form>
</body>
</html>
