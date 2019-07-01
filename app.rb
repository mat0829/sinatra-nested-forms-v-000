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
      @pirate = Student.new(params[:pirate])
     
      params[:pirate][:courses].each do |details|
        Course.new(details)
    end
     
      @courses = Course.all
     
      erb :student
    end

  end
end