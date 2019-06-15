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
    # @num=params[:number].to_i
    # @num.times do
    #   params[:phrase]
    end
  end
end
