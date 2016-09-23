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
	coin_changer(cents)
	"The least amount of change I can give you for #{cents} cents is "
	# redirect '/3_fav_num?name=' + name + '&age=' + age
end

# get '/3_fav_num' do
# 	name = params[:name].capitalize
# 	age = params[:age]
# 	erb :get_fav_num, :locals => {:name => name, :age => age}
# end

# post '/3_fav_num' do
# 	age = params[:age]
# 	name = params[:user_name].capitalize
# 	number1 = params[:number1].to_i
# 	number2 = params[:number2].to_i
# 	number3 = params[:number3].to_i
# 	sum = add(number1, number2, number3)
# 	"Well, #{name}, at age #{age}, your three favorite numbers are: #{number1}, #{number2}, and #{number3}.  Their total is #{sum}."
# end


