<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client_Login.aspx.cs" Inherits="Client_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <h1 style="width: auto; text-align: center; font-size: 50px; height: 74px; min-height: 70px;"
                class="flash">
                <asp:Image ID="Image3" runat="server" ImageUrl="../Image/logod.jpg" Height="88px"
                    Width="77px" ImageAlign="AbsMiddle" />
                Kishan Medical Store</h1>
        </center>
        <center>
            <fieldset style="width: 350px; height: 250px; background-color: #FFFDFF;">
                <legend>Login</legend>
                <br />
                <table style="width: 92%; height: 118px;">
                    <tr>
                        <td style="width: 149px">
                            &nbsp;
                        </td>
                        <td style="width: 162px">
                            &nbsp;
                        </td>
                        <td style="width: 572px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px">
                            &nbsp;<asp:Label ID="lblunm" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td style="width: 162px">
                            <asp:TextBox ID="txtemail" runat="server" BackColor="Transparent" ForeColor="Black"
                                Height="25px" Width="169px" TextMode="Email"></asp:TextBox>
                        </td>
                        <td style="width: 572px">
                            <asp:RequiredFieldValidator ID="rfvunm" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is required.</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter proper email..."
                                ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px">
                            &nbsp;<asp:Label ID="lblpass" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td style="width: 162px">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" BackColor="Transparent"
                                ForeColor="Black" Height="25px" Width="169px"></asp:TextBox>
                        </td>
                        <td style="width: 572px">
                            <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtpass"
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password is required.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 149px">
                            &nbsp;
                        </td>
                        <td style="width: 162px">
                            &nbsp;
                        </td>
                        <td style="width: 572px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 162px" colspan="3" align="center">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" Style="width: 60px;" OnClick="btnlogin_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncncl" runat="server" Text="Cancle" OnClick="btncncl_Click" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="lbtnreg" runat="server" onclick="lbtnreg_Click" PostBackUrl="~/Registration_Cilent.aspx"> <h2> New Registration</h2></asp:LinkButton>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Incorrect user credentials"
                    ForeColor="Red"></asp:Label>
            </fieldset>
        </center>
    </div>
    </form>
</body>
</html>
