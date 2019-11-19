require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 

  get "/square/:number" do
    @user_num = params[:number].to_i
    "#{@user_num * @user_num}"
  end  

  get "/say/:number/:phrase" do
    @user_num = params[:number].to_i
    @user_phrase = params[:phrase]
    "#{@user_phrase*@user_num} "
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    if operation.upcase =="ADD"
      "#{num1+num2}"
    elsif operation.upcase =="SUBTRACT"
      "#{num1-num2}"
    elsif operation.upcase =="MULTIPLY"
      "#{num1*num2}"
    elsif operation.upcase =="DIVIDE"
      "#{num1/num2}"
    end
  end
end