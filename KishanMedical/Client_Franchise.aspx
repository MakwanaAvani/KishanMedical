<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_Franchise.aspx.cs" Inherits="Client_Franchise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<center>
     <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                 Franchise Enquiry </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<center>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Width="80%" >
        <ItemTemplate >
            <br />
            <asp:Label ID="Fr_desc1Label" runat="server" Text='<%# Eval("Fr_desc1") %>' />
            <br />
            <br />
            <asp:Label ID="Fr_desc2Label" runat="server" Text='<%# Eval("Fr_desc2") %>' />
            <br />
            <br />
            <asp:Label ID="Fr_desc3Label" runat="server" Text='<%# Eval("Fr_desc3") %>' />
            <br />
            <br />
            <center>
            <asp:Image ID="Fr_imgLabel" runat="server" ImageUrl='<%# Eval("Fr_img") %>' 
                Width="300px" Height="300px" /><br /></center>
<br />
        </ItemTemplate>
    </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Fr_desc1], [Fr_desc2], [Fr_desc3], [Fr_img] FROM [Franchise_info]"></asp:SqlDataSource>
    <table>
        <tr>
            <td>
                <asp:Label ID="lbllfnm" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfnm" runat="server" ToolTip="Enter Full Name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="Required" ControlToValidate="txtfnm">Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmob" runat="server" Text="Mobile No:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" ToolTip="Enter Mobile Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Required" ControlToValidate="txtmob">Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" ToolTip="Enter Email Address"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="Required" ControlToValidate="txtemail">Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblstate" runat="server" Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" ToolTip="Enter the State"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV4" runat="server" ErrorMessage="Required" ControlToValidate="txtstate">Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpcode" runat="server" Text="PIN Code:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpcode" runat="server" ToolTip="Enter PIN Code"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFV5" runat="server" ErrorMessage="Required" ControlToValidate="txtpcode">Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="btnsbmt" runat="server" Text="Submit" />
            </td>
        </tr>
    </table></center>
</asp:Content>
