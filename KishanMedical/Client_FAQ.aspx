<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="Client_FAQ.aspx.cs" Inherits="Client_FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<center>
     <fieldset style="width: auto; height: auto;  background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                   FAQ </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            *
           <b><i> <asp:Label ID="Faq_queLabel" runat="server" Text='<%# Eval("Faq_que") %>' /></i></b>
            <br />
           
            <asp:Label ID="Faq_ansLabel" runat="server" Text='<%# Eval("Faq_ans") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Faq_que], [Faq_ans] FROM [FAQ]"></asp:SqlDataSource>

</asp:Content>

