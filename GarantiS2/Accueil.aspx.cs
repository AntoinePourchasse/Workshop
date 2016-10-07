using MySql.Data.MySqlClient;
using System;
using System.Configuration;

namespace GarantiS2
{
    public partial class Accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConnexion_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["connexion"].ConnectionString;
                using (MySqlConnection cn = new MySqlConnection(connectionstring))
                {
                    cn.Open();
                    string checkuser = "select count(*) from utilisateur where email ='" + TxtBoxMail.Text + "'";
                    MySqlCommand com = new MySqlCommand(checkuser, cn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    cn.Close();
                    if (temp == 1)
                    {
                        cn.Open();
                        string checkPasswordQuery = "select MotDePasse from utilisateur where email ='" + TxtBoxMail.Text + "'";
                        MySqlCommand passComm = new MySqlCommand(checkPasswordQuery, cn);
                        string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                        if (password == TxtBoxmdp.Text)
                        {
                            Session["Nouveau"] = TxtBoxMail.Text;
                            Response.Redirect("Produit.aspx");
                            Response.Write("Mot de passe correct");
                        }
                        else
                        {
                            Response.Write("Mot de passe incorrect");
                        }
                    }
                    else
                    {
                        Response.Write("e-mail incorrect");
                    }
                    cn.Close();
                }

            }
        }

        protected void BtnInscription_click(object sender, EventArgs e)
        {
            Response.Redirect("Inscription.aspx");
        }
    }
}