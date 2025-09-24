package JavaMail;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;


public class enviarMail {
	String to,subject, message;
	
	public enviarMail(String to, String subject, String message) {
		this.to=to;
		this.subject=subject;
		this.message=message;
	}
	
	public void send_mail() {
		String resultado;
		
		final String from="crmv_iefp@sapo.pt";
		final String password="AA11CC22aa";
		
		String host="smtp.sapo.pt";
		
		// criar uma instância da classe properties para configurar o servidor
		
		Properties p=new Properties();
		p.put("mail.smtp.host",host);
		p.put("mail.transport.protocol", "smtp");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.user", from);
		p.put("mail.password", password);
		p.put("mail.port", "465");
		
		// criar uma sessão
		Session ms=Session.getInstance(p, new Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from,password);
			}
		});
		
		// enviar
		
		try {
			MimeMessage msg=new MimeMessage(ms);
			// personalizar o from/de
			msg.setFrom(new InternetAddress(from));
			// personalizar o to/para
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setText(message);
			Transport.send(msg);
			resultado="Mensagem enviada com sucesso.";
		}
		catch(MessagingException ex) {
			resultado="Erro ao enviar o email:"+ex.getMessage();
		}
		
		System.out.println(resultado);
		
	}
}








