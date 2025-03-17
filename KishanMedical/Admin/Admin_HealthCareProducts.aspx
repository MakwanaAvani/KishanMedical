<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_HealthCareProducts.aspx.cs" Inherits="Admin_Admin_HealthCareProducts" %>

<%@ OutputCache VaryByParam="none" Duration="1" NoStore="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <fieldset style="width: auto; height: auto; background-color: #d5fefd; background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
        <legend>
            <h2 class="shadow3">
            </h2>
        </legend>
        <center>
            <style>
                .shadow3
                {
                    color: black;
                    font: bold 30px Helvetica, Arial, Sans-Serif;
                    text-shadow: 1px 1px white, 2px 2px white, 3px 3px white;
                }
                .shadow3:hover
                {
                    position: relative;
                    top: -3px;
                    left: -3px;
                    text-shadow: 1px 1px white, 2px 2px white, 3px 3px white, 4px 4px white, 5px 5px white, 6px 6px white;
                }
            </style>
            <h4 class="shadow3">
                HealthCare Products</h4>
    </fieldset>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <br />
        <asp:LinkButton ID="addProduct" runat="server" OnClick="addProduct_Click1">Add Product</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="P_GridView" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            OnRowCancelingEdit="P_GridView_RowCancelingEdit" OnRowDeleting="P_GridView_RowDeleting"
            OnRowEditing="P_GridView_RowEditing" OnRowUpdating="P_GridView_RowUpdating" OnPageIndexChanging="P_GridView_PageIndexChanging"
            Style="background-color: #fefefe; background-image: linear-gradient(315deg, #fefefe 0%, #00a4e4 74%);">
            <Columns>
                <asp:TemplateField>
                    <HeaderStyle CssClass="hdrow" />
                    <HeaderTemplate>
                        <asp:Label ID="plblpid" runat="server" Text="Product Id"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblpid" runat="server" Text='<%# Eval("Pro_id") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plblname" runat="server" Text="Product Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblpname" runat="server" Text='<%# Eval("Pro_name") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpname" runat="server" Text='<%# Eval("Pro_name") %>'>  
                        </asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plblcatname" runat="server" Text="Category Name"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblcatname" runat="server" Text='<%# Eval("Cat_name") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                    <%--<EditItemTemplate>
                        <asp:TextBox ID="txtcatname" runat="server" Text='<%# Eval("Cat_name") %>'>  
                        </asp:TextBox>
                    </EditItemTemplate>--%>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plblbrand" runat="server" Text="description"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblpbrand" runat="server" Text='<%# Eval("Pro_brand") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpbrand" runat="server" Text='<%# Eval("Pro_brand") %>'>  
                        </asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plblimg" runat="server" Text="Image"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Image ID="imga1" runat="server" ImageUrl='  
                                    <%# Eval("Pro_img") %>' Height="100px" Width="100px" CssClass="zoom" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:FileUpload ID="fu1" runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plblprice" runat="server" Text="description"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblpprice" runat="server" Text='<%# Eval("Pro_price") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpprice" runat="server" Text='<%# Eval("Pro_price") %>'>  
                        </asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <HeaderTemplate>
                        <asp:Label ID="plbldesc" runat="server" Text="description"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblpdesc" runat="server" Text='<%# Eval("Pro_desc") %>'>  
                        </asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtpdesc" runat="server" Text='<%# Eval("Pro_desc") %>'>  
                        </asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </center>
</asp:Content>
