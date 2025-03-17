<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_FeedBack.aspx.cs" Inherits="Client_FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <center>
     <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   FeedBack </h2>
            </legend>
    <center>
    <style type="text/css">
        .style11
        {
            height: 36px;
            width: 216px;
        }
        .style12
        {
            width: 216px;
            height: 96px;
        }
        .style13
        {
            width: 231px;
            height: 96px;
        }
        .style14
        {
            height: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <hr />

        <table>
            <tr>
                <td class="style11">
                    <asp:Label ID="lblemail" runat="server" Text="Email" CssClass="Label" ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 231px; height: 36px;">
                    <asp:TextBox ID="txtemail" runat="server" Width="176px" CssClass="Label"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 36px">
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email is required.</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:RegularExpressionValidator ID="RFV1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email must be in format.</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="lblfbtype" runat="server" Text="How Would you rate the support you received?"
                        CssClass="Label" ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 231px; height: 36px;">
                    <asp:RadioButton ID="rdb1" runat="server" Checked="True" Text="Good" />
                    <br />
                    <asp:RadioButton ID="rdb2" runat="server" Text="Bad" />
                </td>
                <td style="height: 36px">
                    <%--<asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Required">Required</asp:RequiredFieldValidator>
                --%></td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;*
                    <asp:Label ID="lblfeedback0" runat="server" Text="Add a comment about the quality of support you received."
                        CssClass="Label" ForeColor="Black"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="txtfeedback" runat="server" Height="82px" TextMode="MultiLine" Width="189px"
                        CssClass="Label"></asp:TextBox>
                    &nbsp;
                </td>
                <td class="style14">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="Label" dir="ltr" rowspan="1" valign="middle">
                    &nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Submit"
                        OnClick="btnsubmit_Click" />
                    &nbsp;<asp:Button ID="btnclear" runat="server" Text="Clear" Width="57px" OnClick="btnclear_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="color: #FF0000">
                    <br />
                    *(Optional)-
                    <asp:Label ID="lblmsg" runat="server" Text="...." Style="color: #9900CC"></asp:Label>
                </td>
            </tr>
        </table>
        <hr />
    </center>
</asp:Content>
