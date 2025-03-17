<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_AddContactUs.aspx.cs" Inherits="Admin_Admin_AddContactUs" %>
       <%@ OutputCache VaryByParam="none" Duration=1 NoStore="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <center>
 <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
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
                <td>
                    <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine" Height="44px" Width="222px"
                        Style="font-size: x-large"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Valid Description.."
                        Text="Please Enter Description.." ControlToValidate="txtdes" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbladdr" runat="server" Text="Address"></asp:Label>:
                </td>
                <td>
                    <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                        Text="Please Enter Address... " ForeColor="Red" ControlToValidate="txtaddr"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 43px">
                    <asp:Label ID="lblphn" runat="server" Text="Phone Number:"></asp:Label>
                </td>
                <td style="height: 43px">
                    <asp:TextBox ID="txtphn" runat="server" Width="252px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"
                        Text="Please Enter the Number..." ControlToValidate="txtphn" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 43px">
                    <asp:Label ID="lblhours" runat="server" Text="Visiting Hours"></asp:Label>
                </td>
                <td style="height: 43px">
                    <asp:TextBox ID="txthours" runat="server" Width="252px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"
                        Text="Please Enter Visiting Hours..." ControlToValidate="txthours" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 43px">
                    <asp:Label ID="lblemail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td style="height: 43px">
                    <asp:TextBox ID="txtemail" runat="server" Width="248px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"
                        Text="Enter the Email..." ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" Width="71px" />&nbsp;&nbsp;
                    <asp:Button ID="btnclr" runat="server" Text="Clear" OnClick="btnclr_Click" Width="72px" />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" Text="......" Style="color: #9900CC"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
