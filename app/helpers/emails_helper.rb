module EmailsHelper
func helloEmail() []byte {

	address := "test@example.com"
	name := "Example User"
	from := mail.NewEmail(name, address)
	subject := "Hello World from the SendGrid Go Library"
	address = "test@example.com"
	name = "Example User"
	to := mail.NewEmail(name, address)
	content := mail.NewContent("text/plain", "some text here")
	m := mail.NewV3MailInit(from, subject, to, content)
	address = "test2@example.com"
	name = "Example User"
	email := mail.NewEmail(name, address)
	m.Personalizations[0].AddTos(email)
	return mail.GetRequestBody(m)
}
end
