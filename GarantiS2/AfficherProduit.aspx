<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfficherProduit.aspx.cs" Inherits="GarantiS2.AfficherProduit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GVMysql" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </div>
        ID<asp:TextBox ID="TxtBoxId" runat="server"></asp:TextBox>
        Nom :
        <asp:TextBox ID="TxtBoxNom" runat="server"></asp:TextBox>
        Prénom :
        <asp:TextBox ID="TxtBoxPrénom" runat="server"></asp:TextBox>
        <asp:Button ID="BtnAfficher" runat="server" OnClick="BtnAfficher_Click" Text="Affcher mes produits" />
    </form>
</body>
</html>
