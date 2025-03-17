<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_AddReturnPolicy.aspx.cs" Inherits="Admin_Admin_AddReturnPolicy" %>

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
                            <asp:Label ID="Label1" runat="server" Text="Description:-" Style="font-size: large"
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdesc1" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px" Height="100px" ToolTip="Enter Description"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Description.."
                                Text="Please Enter Description.." ControlToValidate="txtdesc1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Return Policy 1:-" Style="font-size: large"
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdesc2" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px" Height="89px" ToolTip="Enter Retutn Policy 1"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Return Policy 1.."
                                Text="Please Enter Return Policy 1.." ControlToValidate="txtdesc2" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Return Policy 2:-" Style="font-size: large"
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdesc3" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px" Height="91px" ToolTip="Enter Retutn Policy 2"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Return Policy 2.."
                                Text="Please Enter Return Policy 2.." ControlToValidate="txtdesc3" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Return Policy 3:-" Style="font-size: large"
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdesc4" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px" Height="90px" ToolTip="Enter Retutn Policy 3"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Return Policy 3.."
                                Text="Please Enter Return Policy 3.." ControlToValidate="txtdesc4" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Return Process:-" Style="font-size: large"
                                ForeColor="Black"></asp:Label>
                        </td>
                        <td style="width: 375px">
                            <asp:TextBox ID="txtdesc5" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="347px" Height="99px" ToolTip="Enter Return Process"></asp:TextBox>
                            &nbsp;
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Return Process.."
                                Text="Please Enter Return Process.." ControlToValidate="txtdesc5" ForeColor="Red"></asp:RequiredFieldValidator>
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
