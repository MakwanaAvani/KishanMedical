<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_AboutUs.aspx.cs" Inherits="Client_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<center>
     <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="3">
        <tr>
            <td width="30%" height="50%" bgcolor="#EFF6F6">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="AliceBlue">
                    <ItemTemplate>
                        <center>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("A_img") %>' Width="400px"
                                Height="300px" align="center" /></center>
                        <br />
                        </td>
                        <td width="70%" height="50%" <%--background="Admin/Image/back1.jpg"--%> />
                        <h2>
                            <asp:Label ID="A_descLabel" runat="server" Text='<%# Eval("A_desc") %>' /></h2>
                        <br />
                        <br />
                        </td> </tr>
                    </ItemTemplate>
                </asp:DataList>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT [A_desc], [A_img] FROM [AboutUs]"></asp:SqlDataSource>
</asp:Content>
