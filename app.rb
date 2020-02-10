require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name'do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i*params[:number].to_i
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i

    string = ""
    @number.times { string << @phrase+"\n" }
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end
end
