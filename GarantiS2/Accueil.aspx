<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="GarantiS2.Accueil"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 258px;
        }
        .auto-style4 {
            width: 258px;
            text-align: right;
        }
    </style>
</head>
<body style="height: 152px">
    <form id="form1" runat="server">
    <div class="auto-style1">
        <strong style="text-align: center">Page de connexion</strong>
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Mail :</td>
                <td>
                    <asp:TextBox ID="TxtBoxMail" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBoxMail" ErrorMessage="Merci d'entrer votre e-mail !" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style4">Mot de passe :</td>
                <td>
                    <asp:TextBox ID="TxtBoxmdp" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBoxmdp" ErrorMessage="Merci d'entrer votre mot de passe ! " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnConnexion" runat="server" OnClick="BtnConnexion_Click" Text="Se connecter" Width="92px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Pas encore de compte ? Inscrivez-vous !</td>
                <td>
        <strong style="text-align: center">
                    <asp:Button ID="BtnInscription" runat="server" OnClick="BtnInscription_click" Text="Inscription" Width="94px" />
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
    </form>
</body>
</html>
