<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="Admin_Admin_login" %>

<%@ OutputCache VaryByParam="none" Duration="1" NoStore="true" %>
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
                            &nbsp;<asp:Label ID="lblunm" runat="server" Text="UserName:"></asp:Label>
                        </td>
                        <td style="width: 162px">
                            <asp:TextBox ID="txtunm" runat="server" BackColor="Transparent" ForeColor="Black"
                                Height="25px" Width="169px"></asp:TextBox>
                        </td>
                        <td style="width: 572px">
                            <asp:RequiredFieldValidator ID="rfvunm" runat="server" ControlToValidate="txtunm"
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">UserName is required.</asp:RequiredFieldValidator>
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
                <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect user credentials"
                    ForeColor="Red"></asp:Label>
            </fieldset>
        </center>
    </div>
    </form>
</body>
</html>
