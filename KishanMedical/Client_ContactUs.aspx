<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_ContactUs.aspx.cs" Inherits="Client_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
     <center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Contact Us</h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<center>
    <br />
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Height="100%" Width="70%">
            <ItemTemplate>
               
                <b><i><asp:Label ID="C_descLabel" runat="server" Text='<%# Eval("C_desc") %>' /></i></b>
                <br /> <hr /><br />
                <b><asp:Image ID="Image3" runat="server" ImageUrl="~/Admin/Image/address.jpg" Height="20px" Width="20px" />Address:</b><br />
                <asp:Label ID="C_addrLabel" runat="server" Text='<%# Eval("C_addr") %>' />
                <br /><br />
                <b>&#9742;Phone:</b><br />
                <asp:Label ID="C_phnLabel" runat="server" Text='<%# Eval("C_phn") %>' />
                <br /><br />
                <b><asp:Image ID="Image2" runat="server" ImageUrl="~/Admin/Image/hours.png" Height="20px" Width="20px" />Hours:</b><br />
                <asp:Label ID="C_hoursLabel" runat="server" Text='<%# Eval("C_hours") %>' />
                <br /> <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Admin/Image/email.png" Height="20px" Width="20px" />   <b>Email:</b><br />
                <asp:Label ID="C_emailLabel" runat="server" Text='<%# Eval("C_email") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [C_desc], [C_addr], [C_phn], [C_hours], [C_email] FROM [ContactUs]">
        </asp:SqlDataSource>
    </center>
</asp:Content>
