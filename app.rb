require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name].reverse
  end
  
  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num ** 2}.to_s"  
  end
  
  get "/say/:number/:phrase" do 
    
    @phrase = @params[:phrase] * params[:number]
  end 
end