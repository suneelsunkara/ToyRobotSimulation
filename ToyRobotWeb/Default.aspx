<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToyRobotWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <asp:UpdatePanel ID="UpdatePanel" runat="server">
            <ContentTemplate>
                <div>
                    <asp:Label ID="InputLabel" runat="server">Paste the Robot Movement sequence here</asp:Label>
                </div>
                <asp:TextBox ID="InputCode1" TextMode="MultiLine" Rows="10" runat="server"></asp:TextBox>
                <div>
                    <asp:LinkButton ID="lbt_Go" runat="server" OnClick="lbt_Go_Click">Click here</asp:LinkButton>
                </div>
                <hr />
                <div>
                    <asp:Label ID="lbl_Output" runat="server">Output: </asp:Label>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="lbt_Go" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
