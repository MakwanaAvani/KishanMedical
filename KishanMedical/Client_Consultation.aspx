<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_Consultation.aspx.cs" Inherits="Client_Consultation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <h2>
        <center>
            <fieldset style="width: auto; height: auto; background-color: #d5fefd; background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
                <legend>
                    <h2 class="shadow3">
                        Consultation</h2>
                </legend>
                <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td>
                <asp:Label ID="Cofname" runat="server" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCofname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCofname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Colname" runat="server" Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtColname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtColname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Cogender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                
                <asp:RadioButton ID="rdomale" runat="server" Text="Male" GroupName="gender" 
                    Checked="True" />
                <asp:RadioButton ID="rdofemale" runat="server" Text="Female" GroupName="gender" />
                <asp:RadioButton ID="rdoother" runat="server" Text="Other" GroupName="gender" />
            </td>
            <td>
<%--                <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate=""></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Cocomplaint" runat="server" Text="What's your Medical Complaint?"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCocomplaint" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCocomplaint"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Coallergies" runat="server" Text="Do you have any allergies?"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCoallergies" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCoallergies"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Coque" runat="server" Text="Have you any other questions related to health problems?"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCoque" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCoque"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Cophn" runat="server" Text="Phone no.:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCophn" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rdv6" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCophn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Coemail" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCoemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rdv7" runat="server" ErrorMessage="Required..." Text="Required..."
                    ControlToValidate="txtCoemail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
            </td>
            <td>
                <asp:Button ID="btnclear" runat="server" Text="Clear" 
                    onclick="btnclear_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
</asp:Content>
