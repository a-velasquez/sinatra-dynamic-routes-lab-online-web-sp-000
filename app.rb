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
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1   = params[:number1]
    @number2   = params[:number2]

    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    end
  end
end
