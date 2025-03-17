<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_AddCategory.aspx.cs" Inherits="Admin_Admin_AddCategory" %>
      <%@ OutputCache VaryByParam="none" Duration=1 NoStore="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <h2>
        Category</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table>
            <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblcatname" runat="server" Text="Category Name:-" Style="font-size: large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Style="font-size: large" Width="296px" 
                        Height="49px"></asp:TextBox>
                    &nbsp; &nbsp;
                    <br />
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"
                        ControlToValidate="txtname" ForeColor="Red">Enter Category name.</asp:RequiredFieldValidator>
                </td>
            </tr>
           
             <tr>
                <td>
                    <asp:Label ID="lblimage" runat="server" Text="Select Image" Style="font-size: large"></asp:Label>:
                </td>
                <td style="width: 375px">
                    <asp:FileUpload ID="Cat_FileUpload" runat="server" Width="380px" Height="30px" 
                        Style="font-size: large" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                        Text="Choose Image..." ControlToValidate="Cat_FileUpload" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                </tr>
                 <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnadd" runat="server" Text="Add" Style="font-size: large" OnClick="btnadd_Click"
                        Width="84px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncan" runat="server" Text="Cancel" Style="font-size: large" OnClick="btncan_Click" />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Style="color: #9900CC" Text="......"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
