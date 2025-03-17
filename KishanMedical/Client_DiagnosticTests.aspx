<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_DiagnosticTests.aspx.cs" Inherits="Client_DiagnosticTests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   Diagnostic Tests </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
  
  <table border="1"> <td>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        
            <ItemTemplate>
                <b><asp:Label ID="Dt_titleLabel" runat="server" Text='<%# Eval("Dt_title") %>' /></b>
                <br /><br />

                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Dt_img") %>' Width="200px" BorderWidth="5px" BorderStyle="Double" />
                   <br /><br />
                <asp:Label ID="Dt_desc1Label" runat="server" Text='<%# Eval("Dt_desc1") %>' />
                <br /><br />
                <asp:Label ID="Dt_desc2Label" runat="server" Text='<%# Eval("Dt_desc2") %>' />
              
               
                <br />
                <br />
            </ItemTemplate>
            
        </asp:DataList></td>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Dt_title], [Dt_desc1], [Dt_desc2], [Dt_img] FROM [Diagnostic_Tests]">
        </asp:SqlDataSource>
    </center>
</asp:Content>
