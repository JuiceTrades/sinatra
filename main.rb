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
	erb :home
end

get "/home" do
	erb :home
end

get "/contact" do
	erb :contact
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact
end

get '/porfolio' do     
	erb :porfolio
end

# we just do 6 pages for the first 6 projects. 
get '/project1' do     
	erb :project_1
end

get '/project2' do     
	erb :project_2
end

get '/project3' do     
	erb :project_3
end

get '/project4' do     
	erb :project_4
end

get '/project5' do     
	erb :project_5
end

get '/project6' do     
	erb :project_6
end

get '/project7' do     
	"project7"
end

get '/project8' do     
	"project8"
end

get '/project9' do     
	"project9"
end

get '/project10' do     
	"project10"
end

get '/project11' do     
	"project11"
end


get '/project12' do     
	"project12"
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
	content = Content.new(type: 'text/plain', value: body)
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers

	redirect "/contact"

end

post '/customer_form' do

	your_name = params["name"]
	email_address = params["email"]
	body_message = params["message"]


	from = Email.new(email: email_address)
	to = Email.new(email: 'domitrius.anthony@hotmail.com')
	subject = "This is the subject"
	content = Content.new(type: 'text/plain', value: body_message )
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers

	redirect "/contact"

end
