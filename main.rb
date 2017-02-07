require "sinatra"

get "/" do
	
end

get "/contact" do
	erb :contact
end


get '/contact-form' do
  erb :contact_form
end