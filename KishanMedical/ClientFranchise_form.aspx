<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2><center><b>Franchise Enquiry Form</b></center></h2>

<table>
<tr>
<td>
    <asp:Label ID="lbllfnm" runat="server" Text="Full Name"></asp:Label></td>
<td>
    <asp:TextBox ID="txtfnm" runat="server" ToolTip="Enter Full Name"></asp:TextBox></td>

<td>
    <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="Required" 
        ControlToValidate="txtfnm">Required</asp:RequiredFieldValidator></td>

</tr>

<tr>
<td>
    <asp:Label ID="lblmob" runat="server" Text="Mobile No:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtmob" runat="server" ToolTip="Enter Mobile Number"></asp:TextBox></td>

<td>
    <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Required" 
        ControlToValidate="txtmob">Required</asp:RequiredFieldValidator>
    </td>

</tr>
<tr>
<td>
    <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtemail" runat="server" ToolTip="Enter Email Address"></asp:TextBox></td>

<td>
    <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="Required" 
        ControlToValidate="txtemail">Required</asp:RequiredFieldValidator>
    </td>

</tr>
<tr>
<td>
    <asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtstate" runat="server" ToolTip="Enter the State"></asp:TextBox></td>

<td>
    <asp:RequiredFieldValidator ID="RFV4" runat="server" ErrorMessage="Required" 
        ControlToValidate="txtstate">Required</asp:RequiredFieldValidator>
    </td>

</tr>
<tr>
<td>
    <asp:Label ID="lblpcode" runat="server" Text="PIN Code:"></asp:Label></td>
<td>
    <asp:TextBox ID="txtpcode" runat="server" ToolTip="Enter PIN Code"></asp:TextBox></td>

<td>
    <asp:RequiredFieldValidator ID="RFV5" runat="server" ErrorMessage="Required" 
        ControlToValidate="txtpcode">Required</asp:RequiredFieldValidator>
    </td>

</tr>

<tr>
<td  align="center" colspan="2"><asp:Button ID="btnsbmt" runat="server" 
        Text="Submit" /></td>
</tr>
   
</table>
 
</asp:Content>

