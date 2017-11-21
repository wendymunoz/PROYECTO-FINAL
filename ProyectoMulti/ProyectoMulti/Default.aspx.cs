using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoMulti
{
    public partial class Default : System.Web.UI.Page
    {
        private bool eMailSent;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();
            mmsg.To.Add(txtCorreo.Text);
            mmsg.Subject = "Suscripcion Ofertas";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;
            mmsg.Body = "Querido Suscriptor ya esta suscrito , Apartir de ahora recibira las ofertas";
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
                txtCorreo.Text = "";

            }
            catch(Exception)
            {
                throw;
            }
        }

     
    }
}