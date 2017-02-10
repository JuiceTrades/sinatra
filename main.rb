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

get '/customer_form' do
	erb :customer_form
end


post '/contact_form' do

	email_add = params["email"]
	
	body = params["message"]
	phone_number = params['phone']
	city = params['ville']
	area_code = params['postal']
	company_add = params['adresse']
	company_name = params['society']
	personal_name = params['prenom']
	body_content = [personal_name, company_name, company_add, city, area_code, phone_number, body]


	from = Email.new(email: email_add)
	to = Email.new(email: 'domitrius.anthony@hotmail.com')
	subject = "This is the subject"
	content = Content.new(type: 'text/plain', value: body_content)
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers


end


