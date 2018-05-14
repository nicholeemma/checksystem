<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="check.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="1" CellSpacing="1" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" AllowPaging="True" Height="350px" Caption="全部订单" CaptionAlign="Top" HorizontalAlign="Center"  >
        <Columns>
            <asp:BoundField DataField="流水号" HeaderText="流水号" SortExpression="流水号" />
            <asp:BoundField DataField="用车人" HeaderText="用车人" SortExpression="用车人" />
            <asp:BoundField DataField="手机号" HeaderText="手机号" SortExpression="手机号" />
            <asp:BoundField DataField="部门" HeaderText="部门" SortExpression="部门" />
            <asp:BoundField DataField="成本中心" HeaderText="成本中心" SortExpression="成本中心" />
            <asp:BoundField DataField="城市" HeaderText="城市" SortExpression="城市" />
            <asp:BoundField DataField="起点" HeaderText="起点" SortExpression="起点" />
            <asp:BoundField DataField="终点" HeaderText="终点" SortExpression="终点" />
            <asp:BoundField DataField="订单时间" HeaderText="订单时间" SortExpression="订单时间" />
            <asp:BoundField DataField="开始时间" HeaderText="开始时间" SortExpression="开始时间" />
            <asp:BoundField DataField="里程" HeaderText="里程" SortExpression="里程" />
            <asp:BoundField DataField="行驶时间" HeaderText="行驶时间" SortExpression="行驶时间" />
            <asp:BoundField DataField="订单金额" HeaderText="订单金额" SortExpression="订单金额" />
            <asp:BoundField DataField="卡券金额" HeaderText="卡券金额" SortExpression="卡券金额" />
            <asp:BoundField DataField="实际金额" HeaderText="实际金额" SortExpression="实际金额" />
            <asp:BoundField DataField="用车来源" HeaderText="用车来源" SortExpression="用车来源" />
            <asp:BoundField DataField="支付途径" HeaderText="支付途径" SortExpression="支付途径" />
            <asp:BoundField DataField="审批人" HeaderText="审批人" SortExpression="审批人" />
            <asp:BoundField DataField="审批状态" HeaderText="审批状态" SortExpression="审批状态" />
            <asp:BoundField DataField="个人支付状态" HeaderText="个人支付状态" SortExpression="个人支付状态" />
            <asp:BoundField DataField="行程状态" HeaderText="行程状态" SortExpression="行程状态" />
            <asp:BoundField DataField="cc负责人" HeaderText="cc负责人" SortExpression="cc负责人" />
            <asp:BoundField DataField="批次号" HeaderText="批次号" SortExpression="批次号" />
            <asp:BoundField DataField="发票号" HeaderText="发票号" SortExpression="发票号" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" Width="50px" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:mtaxiConnectionString2 %>" SelectCommand="SELECT * FROM [businesstripdata]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mtaxiConnectionString3 %>" SelectCommand="SELECT * FROM [nocompliant]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" Caption="不合规订单" CaptionAlign="Top" CellSpacing="1" DataSourceID="SqlDataSource2" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" BackColor="#99CCFF" BorderColor="#0033CC" BorderStyle="Dashed" CellPadding="1" ForeColor="Black" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#99CCFF" BorderColor="#000066" BorderStyle="Dashed" BorderWidth="1px" ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" Width="40px" />
        <EditRowStyle HorizontalAlign="Left" VerticalAlign="Middle"  />
        <HeaderStyle BackColor="#0066FF" ForeColor="White" />
        <RowStyle BorderStyle="Dashed" Width="70px" />
        <SelectedRowStyle BackColor="#FF9999" BorderColor="#CC0000" />
    </asp:GridView>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="No" HeaderText="No" SortExpression="No" />
            <asp:BoundField DataField="起点" HeaderText="起点" SortExpression="起点" />
            <asp:BoundField DataField="终点" HeaderText="终点" SortExpression="终点" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:mtaxiConnectionString4 %>" SelectCommand="SELECT * FROM [comrecord]"></asp:SqlDataSource>
 
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-lg" Text="查看全部订单" OnClick="Button2_Click" />
    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Text="查看不合规订单" OnClick="Button1_Click" />
    </asp:Content>

