<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Client_ReturnPolicy.aspx.cs" Inherits="Client_ReturnPolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Return Policy </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="Rp_desc1Label" runat="server" Text='<%# Eval("Rp_desc1") %>' />
                <br /><br />
                <asp:Label ID="Rp_desc2Label" runat="server" Text='<%# Eval("Rp_desc2") %>' />
                <br /><br />
                <asp:Label ID="Rp_desc3Label" runat="server" Text='<%# Eval("Rp_desc3") %>' />
                <br /><br />
                <asp:Label ID="Rp_desc4Label" runat="server" Text='<%# Eval("Rp_desc4") %>' />
                <br /><br />
                 <asp:Label ID="Rp_desc5Label" runat="server" Text='<%# Eval("Rp_desc5") %>' />
                <br /><br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Rp_desc1], [Rp_desc2], [Rp_desc3], [Rp_desc4], [Rp_desc5] FROM [Return_Policy]">
        </asp:SqlDataSource>
    </center>

</asp:Content>

