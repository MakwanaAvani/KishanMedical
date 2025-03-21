﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_HealthArticles.aspx.cs" Inherits="Admin_Admin_HealthArticles" %>

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
                Health Articles</h4>
    </fieldset>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:LinkButton ID="addhealthArticles" runat="server" OnClick="addhealthArticles_Click"> <h2> Add Health Articles</h2></asp:LinkButton>
        <br />
        <asp:GridView ID="HA_GridView" runat="server" AutoGenerateColumns="False" DataSourceID="HA_SqlDataSource"
            AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Ha_id"
            Style="background-color: #fefefe; background-image: linear-gradient(315deg, #fefefe 0%, #00a4e4 74%);">
            <Columns>
                <asp:BoundField DataField="Ha_id" HeaderText="Ha_id" SortExpression="Ha_id" />
                <asp:BoundField DataField="Ha_desc1" HeaderText="Ha_desc1" SortExpression="Ha_desc1" />
                <asp:BoundField DataField="Ha_desc2" HeaderText="Ha_desc2" SortExpression="Ha_desc2" />
                <asp:BoundField DataField="Ha_title" HeaderText="Ha_title" SortExpression="Ha_title" />
                <asp:ImageField HeaderText="Ha_img" DataImageUrlField="Ha_img" ControlStyle-Width="280px"
                    ControlStyle-Height="280px">
                    <ControlStyle Height="280px" Width="280px"></ControlStyle>
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="HA_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT * FROM [Health_Articles]" DeleteCommand="Delete from Health_Articles where Ha_id=@Ha_id"
            UpdateCommand="Update Health_Articles set Ha_title=@Ha_title,Ha_desc1=@Ha_desc1,Ha_desc2=@Ha_desc2,Ha_img=@Ha_img where Ha_id=@Ha_id;">
            <DeleteParameters>
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_title" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_desc1" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_desc2" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_img" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="HA_GridView" Name="Ha_id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
