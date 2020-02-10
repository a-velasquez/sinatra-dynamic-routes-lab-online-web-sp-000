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
    @number.times {string.push(@phrase)}
    string
  end

end
