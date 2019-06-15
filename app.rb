require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name=params[:name].to_s
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num=params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = []
    params.values.each do |v|
      sentence << "#{v}"
    end
    "#{sentence.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @op=params[:operation]
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    if @op == "add"
      #{@num1} + #{@num2}
    end

  end
end
