using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;

namespace GarantiS2
{
    public partial class Inscription : System.Web.UI.Page
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

                string insertQuery = "insert into utilisateur (Nom, prenom, DDN, Ville, CP, Tél, email, MotDePasse) values(@Nom, @Prenom, @DDN, @Ville, @CP, @Tél, @email, @MotDePasse);";
                MySqlCommand com = new MySqlCommand(insertQuery, cn);

                com.Parameters.AddWithValue("@Nom", TxtBoxNom1.Text);
                com.Parameters.AddWithValue("@Prenom", TxtBoxPrenom1.Text);
                com.Parameters.AddWithValue("@DDN", TxtBoxDDN.Text);
                com.Parameters.AddWithValue("@Ville", TxtBoxVille.Text);
                com.Parameters.AddWithValue("@CP", TxtBoxCP.Text);
                com.Parameters.AddWithValue("@Tél", TxtBoxTel.Text);
                com.Parameters.AddWithValue("@email", TxtBoxMail1.Text);
                com.Parameters.AddWithValue("@MotDePasse", TxtBoxmdp1.Text);

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
                TxtBoxPrenom1.Text = "";
                TxtBoxDDN.Text = "";
                TxtBoxVille.Text = "";
                TxtBoxCP.Text = "";
                TxtBoxTel.Text = "";
                TxtBoxMail1.Text = "";
                TxtBoxmdp1.Text = "";
                cn.Close();
            }
        }
    }
}