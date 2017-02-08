require "sinatra"
require 'sendgrid-ruby'
include SendGrid












# name
# city
# phone-number
# company-name
# company-add
# postcode
# message









get "/" do
	
end

get "/contact" do
	erb :contact
end


get '/contact_form' do
		
	erb :contact_form
end


post '/contact_form' do

	email_add = params["email"]

	from = Email.new(email: email_add)
	to = Email.new(email: 'domitrius.anthony@hotmail.com')
	subject = 'Sending with SendGrid is Fun'
	content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers


end


