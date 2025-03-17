<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_HealthCareProducts.aspx.cs" Inherits="Client_HealthCareProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
      <%-- .myDIV
        {
            width: 100%;
            padding: 50px 0;
            text-align: left;
            background-color: lightblue;
            margin-top: 10px;
        }--%>
        
        #more {display:none;}
    </style>
    <center>
        <fieldset style="width: auto; height: auto; background-color: #d5fefd; background-image: linear-gradient(315deg, #d5fefd 0%, #fffcff 74%);">
            <legend>
                <h2 class="shadow3">
                    HealthCare Products
                </h2>
            </legend>
            <center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pro_id" RepeatColumns="3"
        RepeatDirection="Vertical" HorizontalAlign="Center" GridLines="Both" OnItemCommand="DataList1_ItemCommand">
        <HeaderTemplate>
            <asp:Label ID="Cat_nameLabel" runat="server" Text='<%# Eval("Cat_name") %>' />
        </HeaderTemplate>
        <ItemTemplate>
            <table align="center">
                <td width="400px">
                    <asp:Image ID="Image12" runat="server" ImageUrl='<%# Eval("Pro_img") %>' Width="150px"
                        Height="150px" />
                    <br />
                    <b>Name:</b>
                    <asp:Label ID="Pro_nameLabel" runat="server" Text='<%# Eval("Pro_name") %>' />
                    <br />
                    <asp:Label ID="Cat_nameLabel" runat="server" Text='<%# Eval("Cat_name") %>' />
                    <br />
                    <b>Brand:</b>
                    <asp:Label ID="Pro_brandLabel" runat="server" Text='<%# Eval("Pro_brand") %>' />
                    <br />
                    <b>Price:</b>
                    <asp:Label ID="Pro_priceLabel" runat="server" Text='<%# Eval("Pro_price") %>' />
                    <br />
                   <p> <b>Description:</b>
                   
                   <%--<div class="myDIV">--%>
                    <span id="dots">...</span>  <span id="more"> 
                     <asp:Label ID="Pro_descLabel" runat="server" Text='<%# Eval("Pro_desc") %>'></asp:Label></span></p>
                         <button onclick="myFunction()" id="myBtn">Read more</button>
                        <script>
//                            function myFunction() {
//                                var x = document.getElementById("myDIV");
//                                if (window.getComputedStyle(x).display === "none") {
//                                    x.style.display = "block";
//                                }
                            //                            }
                            function myFunction() {
                                var dots = document.getElementById("dots");
                                var moreText = document.getElementById("more");
                                var btnText = document.getElementById("myBtn");

                                if (dots.style.display === "none") {
                                    dots.style.display = "inline";
                                    btnText.innerHTML = "Read more";
                                    moreText.style.display = "none";
                                } else {
                                    dots.style.display = "none";
                                    btnText.innerHTML = "Read less";
                                    moreText.style.display = "inline";
                                }
                            }
                        </script>
                    </div>
                    <br />
                    <b>Quantity:</b>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Pro_id")%>'
                        CommandName="addtocart" Height="80px" ImageUrl="~/Image/addtocart.jpg" Width="165px" />
                    <br />
                </td>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label3" runat="server" EnableViewState="True" Enabled="True" Visible="False"></asp:Label>
</asp:Content>
