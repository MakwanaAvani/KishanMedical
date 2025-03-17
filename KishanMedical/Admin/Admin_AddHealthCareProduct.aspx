<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_AddHealthCareProduct.aspx.cs" Inherits="Admin_Admin_AddHealthCareProduct" %>

<%@ OutputCache VaryByParam="none" Duration="1" NoStore="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <fieldset style="width: auto; height: auto; background-color: #d5fefd; background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                </h2>
            </legend>
            <center>
                <table>
                    <tr>
                        <td style="text-align: left" class="style18">
                            <asp:Label ID="lblChpro" runat="server" Text="Choose Category:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td class="style15">
                            <br />
                            <asp:DropDownList ID="ddlistcat" runat="server" Height="46px" Width="229px" Style="font-size: large"
                                AutoPostBack="True">
                            </asp:DropDownList>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlistcat"
                                ErrorMessage="RequiredFieldValidator" ForeColor="Red">Choose category.</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Product_name:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td class="style16">
                            <br />
                            <asp:TextBox ID="txtnm" runat="server" Style="font-size: large" Width="206px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnm"
                                ErrorMessage="Please Enter Item Name.." ForeColor="Red">Enter Item Name..</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label2" runat="server" Text="Product_Price:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td class="style16">
                            <br />
                            <asp:TextBox ID="txtprice" runat="server" Style="font-size: large" Width="206px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtprice"
                                ErrorMessage="Please Enter Price.." ForeColor="Red">Enter Price..</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left">
                            <asp:Label ID="Label1" runat="server" Text="Product brand:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td class="style16">
                            <br />
                            <asp:TextBox ID="txtbrand" runat="server" Style="font-size: large" Width="206px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbrand"
                                ErrorMessage="Please Enter brand Name.." ForeColor="Red">Enter Brand Name..</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left; height: 86px;" class="style17">
                            <asp:Label ID="lblPimg" runat="server" Text="Product image:-" Style="font-size: large"></asp:Label>
                        </td>
                        <td style="height: 86px">
                            <br />
                            <asp:FileUpload ID="P_FileUpload" runat="server" Height="40px" Width="260px" Style="font-size: large" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="P_FileUpload"
                                ErrorMessage="choose valid image.." ForeColor="Red">choose valid image..</asp:RequiredFieldValidator>
                            <br />
                            &nbsp;<asp:Label ID="lblimg" runat="server" Text="."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="style17">
                            <asp:Label ID="lblprodesc" runat="server" Text="Product description:-" Style="font-size: large"></asp:Label>
                            <br />
                        </td>
                        <td>
                            <br />
                            <asp:TextBox ID="txtdes" runat="server" TextMode="MultiLine" Style="font-size: large"
                                Width="266px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdes"
                                ErrorMessage="Please Enter Valid  Description.." ForeColor="Red">Enter Valid  Description..</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style17" colspan="2">
                            <br />
                            <asp:Button ID="btnadd" runat="server" Text="Add" Style="font-size: large" OnClick="btnadd_Click"
                                Width="157px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btncan" runat="server" Text="Cancel" Style="font-size: large" OnClick="btncan_Click" />&nbsp;<br />
                            &nbsp;<asp:Label ID="lblmsg" runat="server" Text="......" Style="color: #9900CC"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </fieldset>
    </center>
    <br />
    <center>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="backProduct_Click">Back</asp:LinkButton>
    </center>
    <br />
    <br />
</asp:Content>
