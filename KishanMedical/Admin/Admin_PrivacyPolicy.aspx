﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="Admin_PrivacyPolicy.aspx.cs" Inherits="Admin_Admin_PrivacyPolicy" %>

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
                Privacy Policy</h4>
    </fieldset>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:LinkButton ID="AddP" runat="server" OnClick="AddP_Click"> <h2> Add Privacy Policy</h2></asp:LinkButton>
    <br />
    <asp:GridView ID="PGridView" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True"
        AutoGenerateEditButton="True" DataSourceID="P_SqlDataSource" Style="background-color: #fefefe;
        background-image: linear-gradient(315deg, #fefefe 0%, #00a4e4 74%);" DataKeyNames="P_id">
        <Columns>
            <asp:BoundField DataField="P_id" HeaderText="P_id" SortExpression="P_id" InsertVisible="False"
                ReadOnly="True" />
            <asp:BoundField DataField="P_desc1" HeaderText="P_desc1" SortExpression="P_desc1" />
            <asp:BoundField DataField="P_desc2" HeaderText="P_desc2" SortExpression="P_desc2" />
            <asp:BoundField DataField="P_desc3" HeaderText="P_desc3" SortExpression="P_desc3" />
            <asp:ImageField HeaderText="P_img" DataImageUrlField="P_img" ControlStyle-Width="280px"
                ControlStyle-Height="280px">
                <ControlStyle Height="280px" Width="280px"></ControlStyle>
            </asp:ImageField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="P_SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [Privacy_Policy]" DeleteCommand=" Delete from Privacy_policy where P_id=@P_id;"
        UpdateCommand="Update Privacy_policy set P_desc1=@P_desc1,P_desc2=@P_desc2,P_desc3=@P_desc3,P_img=@P_img where P_id=@P_id;">
        <DeleteParameters>
            <asp:ControlParameter Name="P_id" ControlID="PGridView" PropertyName="SelectedValue" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="PGridView" Name="P_desc1" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="PGridView" Name="P_desc2" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="PGridView" Name="P_desc3" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="PGridView" Name="P_desc4" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="PGridView" Name="P_id" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </center>
</asp:Content>
