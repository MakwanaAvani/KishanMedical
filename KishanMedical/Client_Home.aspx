<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true"
    CodeFile="Client_Home.aspx.cs" Inherits="Client_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<style>
   .blink_img {
  animation: blinker 2s linear infinite;
}
</style>
    <table border="2">

        <td>
            <div class="w3-content w3-section" style="max-width: 100%; min-height: 50%">
                <img class="mySlides" src="Image/MyPost.png" style="width: 100%; height: 10%">
                <img class="mySlides" src="Image/MyPost1.png" style="width: 100%; height: 10%">
                <img class="mySlides" src="Image/MyPost2.png" style="width: 100%; height: 10%">
                <img class="mySlides" src="Image/MyPost3.png" style="width: 100%; height: 10%">
            </div>
            <script>
                var myIndex = 0;
                carousel();

                function carousel() {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }
                    myIndex++;
                    if (myIndex > x.length) { myIndex = 1 }
                    x[myIndex - 1].style.display = "block";
                    setTimeout(carousel, 2000); // Change image every 2 seconds
                }
            </script>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("H_img") %>' Width="50%"
                        Height="60%" />
                    <br />
                    <h3 style="font-family: 'MS PGothic'">
                        <asp:Label ID="H_descLabel" runat="server" Text='<%# Eval("H_desc") %>' /></h3>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <a href="https://www.healthline.com/health-news" target="_blank">->healthline.com/health-news</a><br>
            <a href="http://www.healthday.com/health-news-services-products.html" target="_blank">->healthday.com/health-news-services-products.html</a><br>
            <a href="https://www.health.news/author/sdwells/" target="_blank">->health.news/author/sdwells/</a>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [H_desc], [H_img] FROM [Home]"></asp:SqlDataSource>
        </td>

        <tr > 
       <td ><center> <asp:Image ID="Image2" runat="server" ImageUrl="~/Admin/Image/quote.jpg" CssClass="blink_img" Height="400px" Width="400px" /></center></td>
       </tr></table>


   
</asp:Content>
