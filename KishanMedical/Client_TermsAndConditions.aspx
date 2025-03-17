<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Client_TermsAndConditions.aspx.cs" Inherits="Client_TermsAndConditions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Terms And Conditions </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="T_desc1Label" runat="server" Text='<%# Eval("T_desc1") %>' />
                <br /><br />
                <asp:Label ID="T_desc2Label" runat="server" Text='<%# Eval("T_desc2") %>' />
                <br /><br />
                <asp:Label ID="T_desc3Label" runat="server" Text='<%# Eval("T_desc3") %>' />
                <br /><br />
                <asp:Label ID="T_desc4Label" runat="server" Text='<%# Eval("T_desc4") %>' />
                <br /><br />
                 <asp:Label ID="T_desc5Label" runat="server" Text='<%# Eval("T_desc5") %>' />
                <br /><br />
                <asp:Label ID="T_desc6Label" runat="server" Text='<%# Eval("T_desc4") %>' />
                <br /><br />
                 <asp:Label ID="T_desc7Label" runat="server" Text='<%# Eval("T_desc5") %>' />
                <br /><br />
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("T_img") %>' Width="200px" />
               
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [T_desc1], [T_desc2], [T_desc3], [T_desc4], [T_desc5], [T_desc6], [T_desc7], [T_img] FROM [TermsAndCondition]">
        </asp:SqlDataSource>
    </center>
</asp:Content>

