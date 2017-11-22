using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMulti
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void MensajeTxt_TextChanged(object sender, EventArgs e)
        {

        }

        protected void EnviarBtt_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
            mmsg.To.Add("suscripcionthegreenhomes@gmail.com");
            mmsg.Subject = AsuntoTxt.Text;
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;
            mmsg.Body = 
            "Usuario : " + NombreTxt.Text
             + '\n'+  "Apellido : " + ApellidosTxt.Text
            + '\n' + "Celular : " + CelTxt.Text
            + '\n' + "Pais : " + Pais.Text
            + MensajeTxt.Text;
            mmsg.BodyEncoding = System.Text.Encoding.UTF8;
            mmsg.IsBodyHtml = true;
            mmsg.From = new System.Net.Mail.MailAddress("suscripcionthegreenhomes@gmail.com");

            System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();
            cliente.Credentials = new System.Net.NetworkCredential("suscripcionthegreenhomes@gmail.com", "multi2017");
            cliente.Port = 587;
            cliente.EnableSsl = true;
            cliente.Host = "smtp.gmail.com";

            try
            {
                cliente.Send(mmsg);
                AsuntoTxt.Text = "";
                NombreTxt.Text = "";
                ApellidosTxt.Text = "";
                CelTxt.Text = "";
                Pais.Text = "";
                MensajeTxt.Text = "";
                CorreoTxt.Text = "";


            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}