require 'sinatra'
require_relative 'coin_changer.rb'

get '/' do 
	erb :get_name
end

post '/name' do
	name = params[:user_name]
	redirect '/cents?users_name=' + name
end

get '/cents' do
	name = params[:users_name].capitalize
	erb :get_cents, :locals => {:name => name}
end

post '/cents' do
	name = params[:user_name].capitalize
	cents = params[:cents].to_i
	coins = coin_changer(cents)
	# "The least amount of change I can give you for #{cents} cents is #{coins}"
	"The least amount of change I can give you for #{cents} cents is: #{coins[:dollar]} dollars, #{coins[:half_dollar]} half-dollar, #{coins[:quarter]} quarter(s), #{coins[:nickel]} nickel(s), #{coins[:dime]} dime(s), and #{coins[:penny]} penny(s)."
	
end




