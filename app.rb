require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb 'pirates/new'
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
     
      params[:pirate][:courses].each do |details|
        Ship.new(details)
    end
     
      @courses = Course.all
     
      erb :student
    end

  end
end