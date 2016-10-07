using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;

namespace GarantiS2
{
    public partial class Produit : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["connexion"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCreer_Click(object sender, EventArgs e)
        {
            using (MySqlConnection cn = new MySqlConnection(connectionstring))
            {
                cn.Open();

                string insertQuery = "insert into produit(Nom, Marque, Modèle, DateAchat) values(@Nom, @Marque, @Modèle, @DateAchat);";
                MySqlCommand com = new MySqlCommand(insertQuery, cn);

                com.Parameters.AddWithValue("@Nom", TxtBoxNom1.Text);
                com.Parameters.AddWithValue("@Marque", TxtBoxMarque.Text);
                com.Parameters.AddWithValue("@Modèle", TxtBoxModele.Text);
                com.Parameters.AddWithValue("@DateAchat", TxtBoxDateAchat.Text);

                MySqlDataReader Reader;
                try
                {
                    Reader = com.ExecuteReader();
                    Response.Write("L'utilisateur a été ajoutée avec succès !");
                    while (Reader.Read())
                    {

                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Erreur:" + ex.ToString());
                }
                TxtBoxNom1.Text = "";
                TxtBoxMarque.Text = "";
                TxtBoxModele.Text = "";
                TxtBoxDateAchat.Text = "";
                cn.Close();
            }
        }
    }
}