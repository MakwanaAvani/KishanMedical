<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="AddtoCart.aspx.cs" Inherits="AddtoCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    ADD Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting"
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
        CellPadding="4" CellSpacing="2" GridLines="Horizontal" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="sno" HeaderText="sno" />
            <asp:BoundField DataField="Pro_id" HeaderText="Pro_id" />
            <asp:BoundField DataField="Pro_name" HeaderText="Pro_name" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" />
            <asp:BoundField DataField="Pro_price" HeaderText="Pro_price" />
            <asp:BoundField DataField="totalprice" HeaderText="totalprice" />
            <asp:TemplateField HeaderText="Pro_img">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Pro_img") %>' Width="100px"
                        Height="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
   
</asp:Content>
