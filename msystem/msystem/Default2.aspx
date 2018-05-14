<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 align="center"><span lang="EN-US"><span>&nbsp;</span>mTaxi</span><span>企业商务出行管理优化系统</span><span lang="EN-US"></span></h1>
        <h3 style="margin-left:30%">
            <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
            <asp:Label ID="Label3" runat="server" ForeColor="Red" Text=""></asp:Label>
        </h3>
        <h3 style="margin-left:30%; margin-bottom:20px;">
            <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text=""></asp:Label>
        </h3>
        
            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" style="margin-left:43%" Text="登陆" OnClick="btnlogin" />
        
        <asp:Label ID="warn" runat="server"></asp:Label>
        
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg" style="float:right">Learn more &raquo;</a></p>
    </div>

</asp:Content>

