<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="analysis.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Image ID="Image1" runat="server" Height="286px" ImageUrl="~/image/welcome.png" Width="292px" />
    <asp:Button ID="Button1" runat="server" Height="44px" OnClick="Button1_Click" class="btn btn-primary btn-lg" style="margin-left:43%" Text="月汇总" Width="151px" />
    <asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" class="btn btn-primary btn-lg" style="margin-left:43%" Text="更多数据分析" Width="151px" />
    <asp:Button ID="Button3" runat="server" Height="44px" OnClick="Button3_Click" class="btn btn-primary btn-lg" style="margin-left:43%" Text="发送邮件" Width="151px" />
</asp:Content>

