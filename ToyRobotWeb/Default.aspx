<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToyRobotWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:UpdatePanel ID="UpdatePanel" runat="server">
    <ContentTemplate>
        <asp:FileUpload ID="FileUpload1" runat="server" OnClick="FileUpload1_Click"></asp:FileUpload>
        <hr />
        <asp:LinkButton ID="lbt_Go" runat="server" OnClick="lbt_Go_Click">Test</asp:LinkButton> 
        <asp:Label ID="lbl_Output" runat="server">Output: </asp:Label>
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID = "lbt_Go" />
    </Triggers>
</asp:UpdatePanel>
    </div>
</asp:Content>
