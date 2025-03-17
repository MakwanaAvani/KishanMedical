<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Client_PrivacyPolicy.aspx.cs" Inherits="Client_PrivacyPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Privacy Policy </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="P_desc1Label" runat="server" Text='<%# Eval("P_desc1") %>' />
                <br /><br />
                <asp:Label ID="P_desc2Label" runat="server" Text='<%# Eval("P_desc2") %>' />
                <br /><br />
                <asp:Label ID="P_desc3Label" runat="server" Text='<%# Eval("P_desc3") %>' />
                <br /><br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("P_img") %>' Width="200px" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [P_desc1], [P_desc2], [P_desc3], [P_img] FROM [Privacy_Policy]">
        </asp:SqlDataSource>
    </center>

</asp:Content>

