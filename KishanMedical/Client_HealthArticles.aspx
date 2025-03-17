<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Client_HealthArticles.aspx.cs" Inherits="Client_HealthArticles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<center>
     <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Health Articles </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center><table border="1" >
<td>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
               <b> <asp:Label ID="Ha_titleLabel" runat="server" Text='<%# Eval("Ha_title") %>' /></b>
                <br /><br />
               <b> <asp:Label ID="Ha_desc1Label" runat="server" Text='<%# Eval("Ha_desc1") %>' /></b>
                <br /><br />
                <asp:Label ID="Ha_desc2Label" runat="server" Text='<%# Eval("Ha_desc2") %>' />
                <br /><br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Ha_img") %>' Width="200px" BorderWidth="5px" BorderStyle="Groove" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList></td>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Ha_title], [Ha_desc1], [Ha_desc2], [Ha_img] FROM [Health_Articles]">
        </asp:SqlDataSource>
    </center>
    
</asp:Content>

