using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace GarantiS2
{
    public partial class AfficherProduit : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["connexion"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAfficher_Click(object sender, EventArgs e)
        {
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("select Produit.nom AS 'Nom du produit', Produit.marque AS 'Marque', Produit.modèle AS 'Modèle', Produit.dateachat AS 'Date d achat' from produit INNER JOIN utilisateur ON (Produit.Utilisateur_idUtilisateur = Utilisateur.idUtilisateur) where (Produit.Utilisateur_iDutilisateur = '" + this.TxtBoxId.Text + "') AND (utilisateur.Nom = '" + this.TxtBoxNom.Text + "') and (Utilisateur.Prenom = '" + this.TxtBoxPrénom.Text + "')", cn);
                DataTable dt = new DataTable();

                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GVMysql.DataSource = dt;
                    GVMysql.DataBind();
                }

            }
            TxtBoxPrénom.Text = "";
            TxtBoxNom.Text = "";
            TxtBoxId.Text = "";
        }
    }
}