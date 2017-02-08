require "sinatra"

get "/" do
	erb :index
end

get "/home" do
	erb :home
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