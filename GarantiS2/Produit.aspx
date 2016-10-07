<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produit.aspx.cs"  Inherits="GarantiS2.Produit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="BtnCreer" runat="server" Text="Ajouter Produit" Width="225px" OnClick="BtnCreer_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LblNom1" runat="server" Text="Nom : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxNom1" runat="server" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblMarque" runat="server" Text="Marque : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxMarque" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblModele" runat="server" Text="Modèle : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxModele" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblDateAchat" runat="server" Text="Date d'achat : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxDateAchat" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
