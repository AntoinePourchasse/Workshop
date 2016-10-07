<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="GarantiS2.Inscription"%>

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
                    <asp:Button ID="BtnCreer" runat="server" Text="Créer Utilisateur" Width="225px" OnClick="BtnCreer_Click" />
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
                <td class="auto-style5">
                    <asp:Label ID="LblPrenom1" runat="server" Text="Prénom : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxPrenom1" runat="server" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblDDN" runat="server" Text="Date de Naissance : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxDDN" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblVille" runat="server" Text="Ville : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxVille" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style">
                <asp:Label ID="LblCP" runat="server" Text="Code Postal : "></asp:Label>
                <br />
                <asp:TextBox ID="TxtBoxCP" runat="server" style="text-align : center"></asp:TextBox>
            </td>
        </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="LblMail1" runat="server" Text="Mail : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxMail1" runat="server" TextMode="Email" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">

                    <asp:Label ID="LblTel" runat="server" Text="Téléphone : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxTel" runat="server" style="text-align: left"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Mot de Passe : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxmdp1" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Confirmation du Mot de Passe : "></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBoxcmdp1" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtBoxmdp1" ControlToValidate="TxtBoxcmdp1" ErrorMessage="Les deux mots de passe ne sont pas identiques ! " ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
