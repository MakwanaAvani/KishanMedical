<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_Cilent.aspx.cs"
    Inherits="Registration_Cilent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 78px;
        }
        .style3
        {
            height: 70px;
        }
        #form1
        {
            height: 671px;
        }
        .style4
        {
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtremail" runat="server" TextMode="Email" Height="41px" Width="261px"></asp:TextBox>
                </td>
                <td class="style2">
                    <asp:RequiredFieldValidator ID="rfvemailr" runat="server" ErrorMessage="Required"
                        ControlToValidate="txtremail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="Email Proper not.."
                        ControlToValidate="txtremail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Proper not..</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtrpassw" runat="server" TextMode="Password" Height="37px" Width="257px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="rfvpassr" runat="server" ErrorMessage="Required"
                        ControlToValidate="txtrpassw"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center" class="style4">
                    <br />
                    <asp:Button ID="btnreg" runat="server" Text="Registration" OnClick="btnreg_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lblogin" runat="server"  Font-Size="Larger">Login</asp:LinkButton>
                    <br />
                    <br />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
