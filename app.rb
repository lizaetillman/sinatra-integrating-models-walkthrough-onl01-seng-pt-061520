require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #can now ref TextAnalyzer class and invoke its new method
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    #feeds new instance of the TextAnalyzer class
    #new instance of class saved to an instance variable called @analyzed_text
    #can call it and its methods from results.erb using erb tags

    erb :results
    
    
  end
end
