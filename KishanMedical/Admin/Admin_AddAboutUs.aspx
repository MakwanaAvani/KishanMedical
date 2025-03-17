<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_AddAboutUs.aspx.cs" Inherits="Admin_Admin_AddAboutUs" %>

<%@ OutputCache VaryByParam="none" Duration="1" NoStore="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <fieldset style="width: auto; height: auto; background-color: #d5fefd; background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                </h2>
            </legend>
            <center>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Description:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Valid Description.."
                                Text="Please Enter Valid Description.." ControlToValidate="txtdes" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblimage" runat="server" Text="Select Image" Style="font-size: large"></asp:Label>:
                        </td>
                        <td style="width: 375px">
                            <asp:FileUpload ID="A_FileUpload" runat="server" Width="357px" Height="30px" Style="font-size: large" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                                Text="Choose Image..." ControlToValidate="A_FileUpload" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" Width="69px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnclr" runat="server" Text="Clear" OnClick="btnclr_Click" Width="70px" />
                            <br />
                            <asp:Label ID="lblmsg" runat="server" Text="......" Style="color: #9900CC"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </center>
</asp:Content>
