<%@ Page Title="Categoy" Language="C#" MasterPageFile="~/ClientMasterPage.master"
    AutoEventWireup="true" CodeFile="Client_Category.aspx.cs" Inherits="Client_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<center>
     <fieldset style="width: auto; height: auto; background-color: #d5fefd;
background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3" >
                   HealthCare Products </h2>
            </legend>
    <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="dl1" runat="server" DataKeyField="Cat_id" HorizontalAlign="Center"
        RepeatDirection="Vertical" RepeatColumns="4" OnItemCommand="dl1_ItemCommand"
        CellSpacing="10" CellPadding="3" CssClass="hiedlink">
        <ItemTemplate>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# BIND("Cat_img") %>' Width="200px"
                    Height="200px" CssClass="textal" />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# BIND("Cat_name") %>' CommandArgument='<%# BIND("Cat_name") %>'
                    class="hideSkiplink" Font-Underline="False" CssClass="textal" Width="200px" Font-Italic="True" Font-Bold="True"></asp:LinkButton>
            </td>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
