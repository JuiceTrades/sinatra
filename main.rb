require "sinatra"

get "/" do
	# erb :index
	"hello world"
end

# get "/about" do
# 	erb :about
# end

get '/porfolio' do     
	erb :porfolio
end

