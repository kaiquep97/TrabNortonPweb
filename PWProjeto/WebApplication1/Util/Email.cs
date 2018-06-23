using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace WebApplication1.Util
{
    public class Email
    {
        private string Endereco = "";
        private string Senha = "";
        private int Porta = 0;
        private string Smtp = "";
        public Email()
        {
            Endereco = ConfigurationManager.AppSettings["EMAIL"] as string;
            Senha = ConfigurationManager.AppSettings["SENHA"] as string;
            Porta =Convert.ToInt32(ConfigurationManager.AppSettings["PORTA"].ToString());
            Smtp = ConfigurationManager.AppSettings["SMTP"] as string;
        }

        public bool EnviaEmail(string assunto,string mensagem,string EmailPara)
        {
            var de = new MailAddress(Endereco);
            var para = new MailAddress(EmailPara);
            var mail = new MailMessage
            {
                Body = mensagem,
                IsBodyHtml = true,
                Subject = assunto,
                From = de
            };
            mail.To.Add(para);

            var smtp = new SmtpClient(Smtp);
            try
            {

                smtp.Port = Porta;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential(Endereco, Senha);
                smtp.Send(mail);
                return true;
            }
            catch (Exception err)
            {

                throw err;
            }

            
        }
    }
}