using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace Proyecto.LogicaDeNegocio
{
    public class Email
    {
        MailMessage mail = new MailMessage();
        SmtpClient smtp = new SmtpClient();

        public bool correoVerificacion(string from, string passwd, string to, string message, string nick) 
        {
            try
            {
                mail.From = new MailAddress(from);
                mail.To.Add(new MailAddress(to));
                mail.Body = message;
                mail.Subject = "¡Bienvenido!, "+nick+" Solo te falta confirmar tu cuenta‏";
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential(from, passwd);
                smtp.EnableSsl = true;
                smtp.Send(mail);
                return true;
            }
            catch(Exception e) 
            {
                Console.WriteLine(e.StackTrace);
                return false;
            }
            
        }
    }
}