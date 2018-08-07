package com.model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

	public static void authenticateMail() {

		final String username = "yuvarajsankar296@gmail.com";
		final String password = "java error";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("yuvarajsankar296@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse("yraj@srivarumotors.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear " +","
				+ "\n\n No spam to my email, please!");

			Transport.send(message);

			System.out.println("Done sendign");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}