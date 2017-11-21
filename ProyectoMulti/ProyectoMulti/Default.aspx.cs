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
            SendMail();
        }

        public void SendMail()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Port = 25;//El puerto debe ser correctamente configurado.
            smtp.Timeout = 100;//Tiempo de conexión
            smtp.Host = "smtp.hotmail.com";
            smtp.EnableSsl = true;

            //Objeto referente a quién envía el correo
            MailAddress from =
                new MailAddress(
                    txtCorreo.Text,
                    "Estimado Cliente",//Nombre asociado a la dirección
                    System.Text.Encoding.UTF8
                    );

            var mails = txtCorreo.Text.Split(';');

            using (MailMessage message = new MailMessage())
            {
                message.From = from;
                message.Subject = "Correo de prueba";
                //Cargamos el contenido del mail.
                message.Body = "HOLI";
                message.Priority = MailPriority.Normal;

                //Cargamos todos los mails que se ingresaron
                //en el campor de text
                foreach (string dir in mails)
                    message.To.Add(dir);
                try
                {
                    //Se envía el mail
                    smtp.Send(message);
                }

                catch (SmtpException ex)

                {
                    throw;
                }
            }
        }
    }
}